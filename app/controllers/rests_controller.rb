class RestsController < ApplicationController
	def index
		@rests = Rest.all
	end


	def show
		@rest = Rest.find(params[:id])
	end

end
