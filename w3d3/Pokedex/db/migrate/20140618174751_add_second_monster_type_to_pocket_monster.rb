class AddSecondMonsterTypeToPocketMonster < ActiveRecord::Migration
  def change
    add_column :pocket_monsters, :monster_type_2, :string
  end
end
