# == Schema Information
#
# Table name: profiles
#
#  id         :bigint(8)        not null, primary key
#  dob        :date
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

class Profile < ApplicationRecord

    belongs_to :user

    searchable do
        text :first_name, :last_name, :full_name
        text :email do
          user.email
        end

        time :dob
        time :created_at
        time :updated_at

        integer :user_id
    end

    def full_name
        "#{first_name} #{last_name}"
    end
end
