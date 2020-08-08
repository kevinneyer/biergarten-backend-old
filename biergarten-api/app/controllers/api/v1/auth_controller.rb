class Api::V1::AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
          render json: user #, include[:reviews, :favorites]
        else
          render json: {errors: "Something went wrong!"}
        end
    end

    def auto_login
      user = User.find_by(id: request.headers["Authorization"])
       
      if user
        render json: user #, include[:reviews, :favorites]
      else
        render json: {errors: "Something went wrong!"}
      end
    end

end    