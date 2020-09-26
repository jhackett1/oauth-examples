
class Api::V1::UsersController < ApplicationController
    # before_action :doorkeeper_authorize!
    respond_to :json

    def show
        respond_with current_user.as_json(except: :password_digest)
    end

end