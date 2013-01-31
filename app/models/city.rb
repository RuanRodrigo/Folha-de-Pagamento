# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
  attr_accessible :name, :state_id
  validates :name, :state_id, presence: true
  belongs_to :state
  has_many :branches
end
