class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :monster_type
      t.integer :height
      t.integer :weight
      t.integer :level

      t.timestamps
    end
  end
end
