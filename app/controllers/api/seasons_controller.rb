class Api::SeasonsController < ApplicationController
    def index
        render :index
    end

    def show
        @season = Season.find(params[:id])
        render :show
    end

    def create
        @season = Season.new(season_params)

        if @season.save
            render :show
        else
            render json: @season.errors.messages, status: 422
        end
    end

    private

    def season_params
        params.require(:season).permit(:season_number, :title, :year)
    end
end
