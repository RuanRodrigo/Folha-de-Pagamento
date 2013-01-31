# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  acronym    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ActiveRecord::Base
  attr_accessible :acronym, :name
  validates :name, presence: true
  validates :acronym, presence: true, length: {maximum: 2}, uniqueness: {case_sensitive: false}
  has_many :cities
end
