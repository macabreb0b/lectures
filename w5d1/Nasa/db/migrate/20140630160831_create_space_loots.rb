class CreateSpaceLoots < ActiveRecord::Migration
  def change
    create_table :space_loots do |t|
      t.integer :astronaut_id, index: true
      t.string :name
      t.timestamps
    end
  end
end
