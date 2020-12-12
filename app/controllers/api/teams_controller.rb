class Api::TeamsController < ApplicationController
    def index
        @teams = current_user.teams
        render :index
    end

    def show
        @team = current_user.active_team
        render :show
    end

    
end
