class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all 
        render json: reviews
      end
  
      def show
          review = Review.find(params[:id])
          render json: review
      end

      def new
         review = Review.create(review_params)
         render json: review
      end
      
      def destroy
        review = Review.find(params[:id])
        review.destroy  
      end

      private

      def favorite_params
        params.require(:review).permit!
      end
end
