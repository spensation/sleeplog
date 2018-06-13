class RestsController < ApplicationController
	def index
		@rests = Rest.all
	end

	def create
		@rest = @day.rest.new(rest_params)
		if @rest.save
			redirect_to rest_path(@rest)
		end
	end

	def show
		@rest = Rest.find(params[:id])
	end

	private
		def rest_params
			params.require(:rest).permit(:name, :duration)
		end
end
