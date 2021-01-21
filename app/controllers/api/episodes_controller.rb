class Api::EpisodesController < ApplicationController
    def index
        @episodes = Episode.all
        render :index
    end

    def show
        @episode = Episode.find(params[:id])
        render :show
    end

    def create
        @episode = Episode.new(episode_params)

        if @episode.save
            render :show
        else
            render json: @user.errors.messages, status: 422
        end
    end

    private
    def episode_params
        params.require(:episode).permit(:episode_name, :air_date, :season_id)
    end
end
