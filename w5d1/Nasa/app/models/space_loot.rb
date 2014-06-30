class SpaceLoot < ActiveRecord::Base
  validates :astronaut, presence: true
  
  belongs_to :astronaut
end
