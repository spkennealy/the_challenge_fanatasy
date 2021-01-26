class Api::LeagueManagersController < ApplicationController 
    

    def destroy
        @league_manager = LeagueManager.find(params[:id])
        @league_manager.destroy
    end

    private

    def league_manager_params
        params.require(:league_manager).permit(:league_id, :user_id)
    end
end