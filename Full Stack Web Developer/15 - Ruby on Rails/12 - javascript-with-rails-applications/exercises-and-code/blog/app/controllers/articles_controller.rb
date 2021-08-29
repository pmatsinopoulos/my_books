# File: app/controllers/articles_controller.rb
#
class ArticlesController < ApplicationController
  skip_before_action :authenticate_user, only: [:index, :show, :foo, :bar]
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, except: [:new, :create, :index, :show, :foo, :bar]

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params.merge({user: current_user}))
    if article.save
      flash[:success] = 'Article has been created!'
      redirect_to edit_article_url(article)
    else
      @article = article
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @articles = Article.all

    q = params[:q]
    if q.present?
      @articles = @articles.where("title ilike :q or text ilike :q", q: "%#{q}%")
    end
  end

  def update
    if @article.update(article_params)
      flash[:success] = 'Article has been updated!'
      redirect_to edit_article_path(@article)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    head :ok
  end

  def foo
    render 'welcome/index'
  end

  def bar
    render plain: 'OK'
  end

  def show
    if request.format.json?
      render json: @article
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def authorize_user
    unless current_user.can_write_article?(@article)
      flash[:warning] = 'Your are not allowed to act on this Article!'
      redirect_to root_url
    end
  end
end

