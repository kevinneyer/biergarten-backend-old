class Api::V1::UsersController < ApplicationController

    def index
      users = User.all 
      render json: users #, include: [:favorites, :reviews]
    end

    def show
      user = User.find(params[:id])
      render json: user #, include: [:favorites, :reviews]
    end

    def create
      user = User.new(user_params)
      if user.save
        render json: user #, include: [:favorites, :reviews]
      else 
        render json: {errors: user.errors.full_messages}
      end
    end 

    def update
      user = User.find(params[:id])
      user = User.update(user_params)
      render json: users #, include: [:favorites, :reviews]
    end
 
    private

    def user_params
      params.require(:user).permit!
    end
end
