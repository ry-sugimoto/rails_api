module Api
  module V1
    class UsersController < ApplicationController
        
        def index
            users = User.order(name: :desc)
            render json: { status: 'SUCCESS', message: 'Loaded users', data: users }
        end

        def create
            user = User.new(user_params)
            if user.save
              render json: { status: 'SUCCESS', data: user}
            else
              render json: { status: 'ERROR', data: user.errors }
            end
        end

    end
  end
end

