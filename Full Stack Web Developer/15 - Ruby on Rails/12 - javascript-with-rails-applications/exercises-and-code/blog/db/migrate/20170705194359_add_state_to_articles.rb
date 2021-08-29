# File: db/migrate/20170705194359_add_state_to_articles.rb
#
class AddStateToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :state, :integer, null: false, default: 0
  end
end
