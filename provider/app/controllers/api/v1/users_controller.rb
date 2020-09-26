class Api::V1::UsersController < ApplicationController
    before_action :doorkeeper_authorize!
  
    def show
        render json: User.find(doorkeeper_token.resource_owner_id).as_json
    end
end