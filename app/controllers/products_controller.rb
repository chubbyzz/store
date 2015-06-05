class ProductsController < ApplicationController
  def index
    render :json => Product.all, :include => :images
  end
  def new
  end
end
