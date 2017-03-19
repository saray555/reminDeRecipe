class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :menu_id
      t.date :creation_date

      t.timestamps null: false
    end
  end
end
