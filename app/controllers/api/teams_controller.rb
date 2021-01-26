class Api::TeamsController < ApplicationController
    def index
        @teams = current_user.teams
        render :index
    end

    def show
        @team = current_user.active_team
        render :show
    end

    def create
        @team = Team.new(team_params)

        if @team.save
            render :show
        else
            render json: @team.errors.full_messages, status: 422
        end
    end


    private 

    def team_params
        params.require(:team).permit(:league_id, :team_name)
    end
end
