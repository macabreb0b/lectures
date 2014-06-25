class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.string :gender, null: false
      t.string :type_one, null: false
      t.string :type_two

      t.timestamps
    end
  end
end
