# == Schema Information
#
# Table name: branches
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  address            :string(255)
#  street_number      :integer
#  district           :string(255)
#  city_id            :integer
#  phone_number       :integer
#  postal_code        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  address_complement :string(255)
#

require 'test_helper'

class BranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
