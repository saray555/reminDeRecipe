class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :menu_id
      t.date :menu_date
      t.string :menu_name
      t.string :description

      t.timestamps null: false
      
      t.index [:menu_id, :created_at]
    end
  end
end
