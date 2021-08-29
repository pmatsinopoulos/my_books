class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :display_name
      t.text :display_description

      t.timestamps
    end
  end
end
