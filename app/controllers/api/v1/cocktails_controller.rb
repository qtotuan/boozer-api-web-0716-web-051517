module Api
  module V1
    class CocktailsController < ApplicationController
      def index
        render json: Cocktail.all
      end

      def show
        render json: Cocktail.find(params[:id])
      end

      def create
        cocktail = Cocktail.create(cocktail_params)
        render json: cocktail, status: 201
      end

      def edit

      end

      def update

      end

      def destroy

      end

      private

      def cocktail_params
        params.require(:cocktail).permit(:name, :description, :instructions, proportion_attributes: [:amount, :ingredient_name])
      end

    end
  end
end
