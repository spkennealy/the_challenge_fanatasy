class Api::TeamsController < ApplicationController
    def index
        @teams = Team.find(params[:league_id])
        render :index
    end

end
