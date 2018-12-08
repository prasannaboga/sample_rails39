# == Schema Information
#
# Table name: addresses
#
#  id                :bigint(8)        not null, primary key
#  area_location     :string
#  building_number   :string
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

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
