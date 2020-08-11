class Api::V1::FavoritesController < ApplicationController

    def index
        favorites = Favorite.all 
        render json: favorites
      end
  
      def show
          favorite = Favorite.find(params[:id])
          render json: favorite
      end

      def create
         favorite = Favorite.create({beer_id: params[:beer][:beer_id], user: session_user})
         render json: favorite
      end

      def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy  
      end

      private

      def favorite_params
        params.require(:favorite).permit!
      end

end
