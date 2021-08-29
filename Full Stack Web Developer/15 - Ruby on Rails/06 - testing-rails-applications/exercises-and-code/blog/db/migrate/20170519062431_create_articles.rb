# File: db/migrate/20170519062431_create_articles.rb
#
class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text   :text

      t.timestamps
    end
  end
end
