class CreateMaster < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name, null: false
      t.string :hometown, null: false
      t.string :email
      
      t.timestamps
    end
    
    add_index :masters, :name, :unique => true
  end
end
