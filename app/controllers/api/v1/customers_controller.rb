module Api::V1
	class CustomersController < ActionController::API
		def index
		  if query_params[:by_full_name]
		  	@customers = Customer.where("(firstname || lastname) LIKE ?",  "%#{query_params[:by_full_name]}%")
		  else
	      	@customers = Customer.all
	      end

		  if query_params[:by_company]
		  	id = Company.find_by_name(query_params[:by_company]).id
		  	@customers = @customers.where(company_id: id)
		  end

	      render json: @customers
	    end

		private
	    def query_params
	    	params.permit(:by_full_name, :by_company)
	    end
	end
end