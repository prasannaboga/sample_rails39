# == Schema Information
#
# Table name: addresses
#
#  id                :bigint(8)        not null, primary key
#  area_location     :string
#  building_number   :string
#  extras            :jsonb
#  latitude          :float
#  longitude         :float
#  postal_code       :string
#  secondary_address :string
#  street_address    :string
#  street_name       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :bigint(8)
#
# Indexes
#
#  index_addresses_on_latitude_and_longitude  (latitude,longitude)
#  index_addresses_on_user_id                 (user_id)
#

require 'elasticsearch/model'

class Address < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    belongs_to :user

    mapping do
        indexes :id, type: 'long'
        indexes :user_id, type: 'long'
        indexes :secondary_address, type: 'text'
        indexes :coordinates, type: 'geo_point'
    end

    def as_indexed_json(options = {})
        as_json().merge(coordinates: {lat: self.latitude, lon: self.longitude})
    end

end
