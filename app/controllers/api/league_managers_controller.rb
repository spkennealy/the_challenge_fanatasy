class Api::LeagueManagersController < ApplicationController 
    def create
        @league_manager = TeamOwnership.new(league_manager_params)
    end

    private

    def league_manager_params
        params.require(:league_manager).permit(:league_id, :user_id)
    end
end