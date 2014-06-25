class CreatePocketMonsters < ActiveRecord::Migration
  def change
    create_table :pocket_monsters do |t|
      t.string :name, index: true
      t.string :type, null: false
      t.integer :master_id, null: false
      
      t.timestamps
    end
    
    add_index :pocket_monsters, :master_id
  end
end
