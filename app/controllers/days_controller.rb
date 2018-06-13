class DaysController < ApplicationController

	def index
		@days = Day.all
	end

	def new
		@day = Day.new
	end

	def create
		@day = Day.new(day_params)
		if @day.save
			redirect_to day_path(@day)
		end
	end

	def show
		@day = Day.find(params[:id])
	end


	private

		def day_params
			params.require(:day).permit(:name, :date)
		end
end
