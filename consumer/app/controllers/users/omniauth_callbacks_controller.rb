class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def doorkeeper
        auth = request.env['omniauth.auth']

        @user = User.find_or_create_by({
            uid: auth.uid,
            email: auth.info.email,
            provider: auth.provider
        })

        if @user.persisted?
            sign_in_and_redirect @user, event: :authentication
        else
            redirect_to root_path
        end
    end

    def failure
        redirect_to root_path
    end
end