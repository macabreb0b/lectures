class AddFaintedToPocketMonster < ActiveRecord::Migration
  def change
    add_column :pocket_monsters, :fainted, :boolean, default: false
  end
  
  
end
