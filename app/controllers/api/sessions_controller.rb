class Api::SessionsController < ApplicationController
    def new
    end
    
    def create

    end

    def destroy
        if current_user
            logout!
        else
            render json: 'Can\'t destroy a user that doesn\'t exist!', status: 404
        end
    end
end
