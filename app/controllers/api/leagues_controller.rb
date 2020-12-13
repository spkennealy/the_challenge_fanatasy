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
end
