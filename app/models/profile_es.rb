require 'elasticsearch/model'

class ProfileEs < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    self.table_name = "profiles"

    belongs_to :user

end
