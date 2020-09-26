class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def doorkeeper
        auth = request.env['omniauth.auth']

        @user = User.find_or_initialize_by({
            uid: auth.uid,
            provider: auth.provider
        })

        @user.email = auth.info.email

        @user.save

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