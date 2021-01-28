class Api::TeamOwnershipsController < ApplicationController
    

    def destroy
        @team_ownership = TeamOwnership.find(params[:id])
        @team_ownership.destroy
    end

    private

    def team_ownership_params
        params.require(:team_ownership).permit(:team_id, :user_id)
    end
end 