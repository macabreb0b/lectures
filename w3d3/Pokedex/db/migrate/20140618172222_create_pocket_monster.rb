class CreatePocketMonster < ActiveRecord::Migration
  def change
    create_table :pocket_monsters do |t|
      t.string :name, null: false
      t.string :monster_type, null: false
      t.integer :hp, null: false
      t.integer :strength, null: false
      t.integer :level, null: false, default: 1
      t.integer :master_id, null: false
      
      t.timestamps
    end
    
    add_index :pocket_monsters, :master_id
  end
end