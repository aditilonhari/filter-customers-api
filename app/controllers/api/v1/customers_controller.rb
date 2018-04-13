module Api::V1
	class CustomersController < ActionController::API
		def index
	      @customers = Customer.all
	      render json: @customers
	    end
	end
end