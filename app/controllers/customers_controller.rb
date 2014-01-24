class CustomersController < ApplicationController
  def index
    @customers = Customer.all.includes(:addresses)
  end
  
  def create
    @customer = Customer.new(params[:customer])
    
    if @customer.save

      redirect_to root_url
    else
      render json: @customer.errors.full_messages
    end
    
  end
  
  def search
    @customers = Customer.includes(:addresses).merge(Address.where("postal code == ?", params[:postal_code]))
    
    render :index
  end
  
end
