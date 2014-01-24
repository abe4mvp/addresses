class Address < ActiveRecord::Base
   attr_accessible :street, :city, :postal_code
   belongs_to :customer
end
