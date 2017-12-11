module Api
  module V1
    class UsersController < ApplicationController
      def index
        render json: User.includes(:channels), include: ['channels']
      end

      def show
        byebug
      end

      def new
        byebug
      end

      def create
        @user = User.create(user_params)
        render json: @user.to_json
      end

      private

      def user_params
        params.require(:user).permit(:username)
      end



    end
  end
end
