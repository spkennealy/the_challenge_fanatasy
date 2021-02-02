class Api::LeaguesController < ApplicationController
    def index
        @leagues = current_user.leagues
        render :index
    end

    def show
        @leagues = current_user.leagues
        @league = @leagues.select { |l| l.current_season == current_season }
        render :show
    end

    def add_manager
        @league_manager = TeamOwnership.new(league_manager_params)

        if @league_manager.save
            render : 
        else
            render json: @league_manager.errors.full_messages, status: 422
        end
    end

    def remove_manager
        @league_manager = LeagueManager.find(params[:id])
        @league_manager.destroy
    end

    # def remove_team
    #     @team
    # end

    private 

    def league_manager_params
        params.require(:league_manager).permit(:league_id, :user_id)
    end

end
