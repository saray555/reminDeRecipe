class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :recipe_id
      t.string :ingredient_name
      t.string :ingredient_qty

      t.timestamps null: false
    end
  end
end
