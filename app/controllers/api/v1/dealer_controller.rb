class Api::V1::DealerController < ApplicationController
	def index
		render json: Dealer.all, status: :ok
	end	

	def create
		@dealer_item = Dealer.new(params.require(:dealer).permit(:id , :title, :description, :vote))
		if @dealer_item.save
			render json: @dealer_item, status: :created
		else
			render json: @dealer_item.error, status: :unprocessable_entity
		end		
	end

	def show
		@dealer = Dealer.find(params[:id])
		render json: @dealer
	end
end
