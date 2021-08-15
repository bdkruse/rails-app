class CustomersController < ApplicationController
  before_action :set_customer, except: [:index, :new]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(resource_params)
    if @customer.save
      redirect_to root_path, notice: 'Succesfully created customer'
    else
      redirect_to root_path, notice: 'Failed to create customer'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def resource_params
    params.require(:customer).permit(:name, :address, :city, :state, :zipcode, :customer_number)
  end
end
