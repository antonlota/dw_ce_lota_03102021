class ProductsController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def index
    @products = Product.order('created_at DESC')
    render json: { status: 200, message: 'Loaded all Products', "dataList": @products }, status: :ok
  end
  
  def show
    @product = Product.find(params[:id])
    render json: { status: 200, message: 'Loaded Selected Product', data: @product }, status: :ok
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: { status: 200, message: 'Product Save', data: @product }, status: :ok
    else
      render json: { status: 422, message: 'Product not Saved' }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: { status: 200, message: 'Deleted Product', data: @product }, status: :ok
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      render json: { status: 200, message: 'Product Updated', data: @product }, status: :ok
    else
      render json: { status: 422, message: 'Product not Updated' }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.permit(:sku, :quantity )
  end
  
end