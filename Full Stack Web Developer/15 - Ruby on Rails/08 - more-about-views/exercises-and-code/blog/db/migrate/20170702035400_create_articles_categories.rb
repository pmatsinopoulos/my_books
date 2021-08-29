# File db/migrate/20170702035400_create_articles_categories
#
class CreateArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :articles_categories do |t|
      t.references :article, foreign_key: {name: 'articles_categories_article_fk'}, index: false
      t.references :category, foreign_key: {name: 'articles_categories_category_fk'}, index: false

      t.timestamps
    end

    add_index :articles_categories, [:article_id, :category_id], unique: true, name: 'articles_categories_article_category_uidx'
  end
end
