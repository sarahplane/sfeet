class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destory]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Product successfully added."
      redirect_to products_path
    else
      flash.now[:alert] = "Product NOT added, please try again."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
