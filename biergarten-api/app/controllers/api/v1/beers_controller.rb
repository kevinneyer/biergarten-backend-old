class Api::V1::BeersController < ApplicationController

    def index
      beers = Beer.all 
      render json: beers, include: [:favorites, :reviews]
    end

    def show
        beer = Beer.find(params[:id])
        render json: beer, include: [:favorites, :reviews]
    end
    
end
