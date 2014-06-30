class Astronaut < ActiveRecord::Base
  has_many :space_loots, 
    foreign_key: :astronaut_id,
    inverse_of: :astronaut
  
  has_many :planet_visits
  
  has_many :visited_planets, 
    through: :planet_visits, 
    source: :planet
end
