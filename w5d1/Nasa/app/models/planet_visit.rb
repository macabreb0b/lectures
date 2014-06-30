class PlanetVisit < ActiveRecord::Base
  belongs_to :astronaut
  belongs_to :planet
end
