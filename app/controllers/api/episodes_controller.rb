class Api::EpisodesController < ApplicationController
    def index
        @episodes = Episode.all
        render :index
    end

    def show

    end
end
