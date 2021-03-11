class CustomersController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def index
      @customers = Customer.order('created_at DESC')
      render json: { status: 200, message: 'Loaded all Customers', "dataList": @customers }, status: :ok
    end
    
    def show
      @customer = Customer.find(params[:id])
      render json: { status: 200, message: 'Loaded Selected Customer', data: @customer }, status: :ok
    end
  
    def create
      @customer = Customer.new(customer_params)
      if @customer.save
        render json: { status: 200, message: 'Customer Save', data: @customer }, status: :ok
      else
        render json: { status: 422, message: 'Customer not Saved' }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @customer = Customer.find(params[:id])
      @customer.destroy
      render json: { status: 200, message: 'Deleted Customer', data: @customer }, status: :ok
    end
  
    def update
      @customer = Customer.find(params[:id])
      if @customer.update_attributes(customer_params)
        render json: { status: 200, message: 'Customer Updated', data: @customer }, status: :ok
      else
        render json: { status: 422, message: 'Customer not Updated' }, status: :unprocessable_entity
      end
    end

    def create_order
      # create order with the amount in mind. this amount should subtract from the quantity that the product has
      # if the order requested is larger than current quantity of selected product flash error message
    end

    
    def show_order_history
      @customer_orders = Customer.find(params[:id]).orders
      render json: { status: 200, message: 'Loaded All Customer Orders ', data: @customer_orders }, status: :ok
    end

    def notifications

    end
  
    private
  
    def customer_params
      params.permit(:name, :email)
    end
end
