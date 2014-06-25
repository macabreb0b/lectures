class AddPocketMonsterIdToMoves < ActiveRecord::Migration
  def change
    add_column :moves, :pocket_monster_id, :integer
  end
end
