class CustomersController < ApplicationController
  def index
    @customers = Customer.includes(:addresses)
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
    @postal_code = params[:postal_code]
    @customers = Customer.includes(:addresses).merge(Address.where(postal_code: @postal_code ))
    #this is a active_record shorcut for the following sql code:
    
    # SELCTECT
 #      customers, adresses 
 #    FROM
 #      customers
 #    LEFT OUTTER JOIN
 #      adresses 
 #    ON 
 #      customer.id = address.customer_id
 #    WHERE
 #      adresses.postal_code == ?
       
    
    render :search_results
  end
  
  
  
end
