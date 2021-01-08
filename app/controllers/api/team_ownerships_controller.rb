class Api::TeamOwnershipsController < ApplicationController
    def create
        @team_ownership = TeamOwnership.new(team_ownership_params)
    end

    private

    def team_ownership_params
        params.require(:team_ownership).permit(:team_id, :user_id)
    end
end