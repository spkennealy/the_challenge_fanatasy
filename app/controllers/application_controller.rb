class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token

    helper_method :current_user, :logged_in?, :current_league, :current_season

    def current_user
        @current_user ||= User.find_by_session_token(session[:session_token])
    end

    def login!(user)
        @current_user = user
        session[:session_token] = user.reset_session_token!
    end

    def logout!
        current_user.reset_session_token!
        session[:session_token] = nil
        @current_user = nil
    end

    def logged_in?
        !!(current_user)
    end

    def current_league
        session[:league_id]
    end

    def current_season
        36
    end
end
