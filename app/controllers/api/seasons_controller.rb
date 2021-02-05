class Api::SeasonsController < ApplicationController
    def index
        render :index
    end

    def show
        @season = Season.find(params[:id])
        render :show
    end
end
