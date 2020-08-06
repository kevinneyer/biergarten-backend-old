class Api::V1::BeersController < ApplicationController

    def index
      beers = Beer.all 
      render json: beers, include: [:favorites, :reviews]
    end

    def show
        beer = Beer.find(params[:id])
        render json: beer, include: [:favorites, :reviews]
    end

    def update
      beer = Beer.find(params[:id])
      beer.update(beer_params)
      render json: beer, include: [:favorites, :reviews]
    end
    
    private

    def beer_params
      params.require(:beer).permit!
    end

end
