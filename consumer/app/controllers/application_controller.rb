class ApplicationController < ActionController::Base

    def index
    end

    def authentication_callback
        auth = request.env['omniauth.auth']
        # byebug
        if User.find_or_create_by({
            uid: auth.uid,
            email: auth.info.email
        })
            render json: auth.to_json
        end
    end
end
