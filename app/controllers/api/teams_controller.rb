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
            add_manager(@team.id, params[:user_id])
            render :show
        else
            render json: @team.errors.full_messages, status: 422
        end
    end

    def add_manager(team_id, user_id)
        team_id = params[:id] if team_id == null
        user_id = params[:user_id] if user_id == null
        
        @team_ownership = TeamOwnership.new(team_id, user_id)

        if @team_ownership.save
            return
        else
            render json: @team_ownership.errors.full_messages, status: 422 
        end
    end

    private 

    def team_params
        params.require(:team).permit(:league_id, :team_name, :user_id)
    end
end
