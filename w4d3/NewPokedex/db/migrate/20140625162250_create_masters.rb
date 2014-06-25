class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :hometown

      t.timestamps
    end
    
    add_index :masters, :email, unique: true
  end
end
