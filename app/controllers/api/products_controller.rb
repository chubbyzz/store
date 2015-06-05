class Api::ProductsController < Api:: ApplicationController
  def page
    render :json => Product.all, :include => :image
  end

  #admin
  def create
    @product = Product.new(params['product']);
    if @product.save
      render json: [success: true]
    else
      render json: [success: false, error: @product.errors]
    end
  end
  def upload
    @proto = Photo.new(params[:file])
    if @photo.save
      render json: [image: @proto.url]
    else
      render json: [error: 'Upload fail']
    end
  end
end
