module Api::V1
	class CustomersController < ActionController::API
		def index
		  if query_params[:by_full_name]
		  	@customers = Customer.where("(firstname || lastname) LIKE ?",  "%#{query_params[:by_full_name]}%")
		  else
	      	@customers = Customer.all
	      end

	      render json: @customers
	    end

		private
	    def query_params
	    	params.permit(:by_full_name)
	    end
	end
end