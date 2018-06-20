class RestsController < ApplicationController
	# naps in past seven days
	def index
		@day = Day.find(params[:day_id])
		@rests = @day.rests
	end

	def new
		@day = Day.find(params[:day_id])
		@rest = Rest.new
	end

	def create	
		@rest = Rest.create(rest_params)		
	end


	def show
		@rest = Rest.find(params[:id])	
	end


	private
		def rest_params
			params.require(:rest).include(:id, :name, :duration, :starttime, :endtime, :day_id)
		end
end
