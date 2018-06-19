class RestsController < ApplicationController
	# naps in past seven days
	def index
		@rests = Rest.created_since(7.days.ago)
	end

	def new
		@rest = Rest.new
	end

	def create
		@rest = Rest.create(rest_params)		
	end


	def show
		@rest = Rest.find(params[:id])
		@note = @rest.notes.build	
	end


	private
		def rest_params
			params.require(:rest).include(:id, :name, :duration, :day_id)
		end
end
