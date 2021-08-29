# File: db/migrate/20170618060653_add_user_id_to_articles.rb
#
class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        # delete all Articles first
        say_with_time('Deleting all articles') do
          Article.destroy_all
        end
      end
    end

    add_reference :articles, :user, foreign_key: {name: 'articles_user_id_users_id_fk'}, index: {name: 'articles_user_id_idx'}
  end
end
