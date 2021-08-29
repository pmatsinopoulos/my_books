# File: db/migrate/20170701194907_create_categories.rb
#
class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :categories, [:name], unique: true, name: 'categories_name_uidx'
  end
end
