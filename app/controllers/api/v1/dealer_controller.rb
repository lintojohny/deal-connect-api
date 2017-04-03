class Api::V1::DealerController < ApplicationController
	def index
		render json: Dealer.all, status: :ok
	end	
end
