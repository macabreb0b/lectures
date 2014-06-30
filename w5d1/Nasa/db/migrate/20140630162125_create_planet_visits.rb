class CreatePlanetVisits < ActiveRecord::Migration
  def change
    create_table :planet_visits do |t|
      t.references :astronaut, index: true
      t.references :planet, index: true

      t.timestamps
    end
  end
end
