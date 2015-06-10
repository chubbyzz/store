class ProductsController < ApplicationController
  def index
    render json: "x "
    @products = Product.all.includes(:images)
    render json: @products.as_json(include: :images)
  end
  def new
  end
end
