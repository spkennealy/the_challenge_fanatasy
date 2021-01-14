class Api::LeagueManagersController < ApplicationController 
    def create
        @league_manager = TeamOwnership.new(league_manager_params)
    end

    def destroy
        @league_manager = TeamOwnership.find(params[:id])
        @league_manager.destroy
    end

    private

    def league_manager_params
        params.require(:league_manager).permit(:league_id, :user_id)
    end
end