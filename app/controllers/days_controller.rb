class DaysController < ApplicationController

	def index
		@days = Day.all
	end

	def new
		@day = Day.new
		@day.rests.build
	end

	def create
		@day = Day.create(day_params)
		redirect_to day_path(@day)
	end

	def show
		@day = Day.find(params[:id])
	end


	private

		def day_params
			params.require(:day).permit(:id, :date, rests_attributes: [:id, :name, :duration])
		end
end
