class Api::LeaguesController < ApplicationController
    def index
        @leagues = current_user.leagues
        render :index
    end
end
