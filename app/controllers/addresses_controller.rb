class AddressesController < ApplicationController
  
  def create 
    
    @customer = Customer.find(params[:customer])
    @customer.addresses.build(params[:address])
    
    if @customer.save

      redirect_to root_url
    else
      render json: @customer.errors.full_messages
    end
  end
  
  
end
