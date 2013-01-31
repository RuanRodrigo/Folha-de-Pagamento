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

class Branch < ActiveRecord::Base
  attr_accessible :address, :city_id, :district, :name, :phone_number, :postal_code, :street_number, :address_complement
  validates :name, :address, :street_number, :district, :city_id, :phone_number, :postal_code, presence: true
  validates :phone_number, length: {maximum: 10}
  validates :postal_code, length: {maximum: 8}
  belongs_to :city
end
