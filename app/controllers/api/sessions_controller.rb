class SessionsController < ApplicationController
    def root
    end

    def create
        @user = User.new()
    end

    def destroy
    end
end