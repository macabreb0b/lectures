class AddMasterIdToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :master_id, :integer
    add_index :pokemons, :master_id
  end
end
