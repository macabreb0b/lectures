class CreateMove < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name, null: false
      t.integer :damage, null: false
      
      t.timestamps
    end
  end
end
