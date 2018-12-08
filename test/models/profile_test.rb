# == Schema Information
#
# Table name: profiles
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  first_name :string
#  last_name  :string
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
