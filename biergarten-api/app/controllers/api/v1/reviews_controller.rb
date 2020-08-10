class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all 
        render json: reviews
      end
  
      def show
          review = Review.find(params[:id])
          render json: review
      end

      def create
          review = Review.create({content: params[:content], beer_id: params[:beer][:beer_id], user: session_user})
          # review = Review.create(review_params)
          render json: review        
      end
      
      def destroy
        review = Review.find(params[:id])
        review.destroy
      end

      private

      def review_params
        params.require(:review).permit!
      end
end
