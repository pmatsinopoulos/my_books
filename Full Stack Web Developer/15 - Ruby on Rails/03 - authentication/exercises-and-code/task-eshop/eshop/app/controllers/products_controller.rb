class ProductsController < ApplicationController
  skip_before_action :authenticate_user, only: [:index, :show]
  before_action :find_product, only: [:show, :edit, :update]

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    if product.save
      flash[:success] = 'Product has been created!'
      redirect_to edit_product_path(product)
    else
      @product = product
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def update
    if @product.update(product_params)
      flash[:success] = 'Product has been updated!'
      redirect_to edit_product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] = 'Product has been deleted!'
    redirect_to products_path
  end

  protected

  def product_params
    params.require(:product).permit(:code, :display_name, :display_description)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
