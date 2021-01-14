class Api::LeagueManagersController < ApplicationController 
    def create
        @league_manager = TeamOwnership.new()
    end
end