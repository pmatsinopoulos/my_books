# File: app/controllers/articles_controller.rb
#
class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    if article.save
      flash[:success] = 'Article has been created!'
      redirect_to edit_article_url(article)
    else
      @article = article
      render :new
    end
  end

  def index
    @articles = Article.all
  end

  def update
    @article.title = params[:title]
    @article.text = params[:text]

    @article.save
  end

  def destroy
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end

