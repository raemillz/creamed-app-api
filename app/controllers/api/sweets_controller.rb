class Api::SweetsController < ApplicationController
    before_action :set_sweet, only: [:show, :update, :destroy]

    def index
      render json: Sweet.all
    end

    def show
      render json: @sweet
    end

    def create
      sweet = Sweet.new(sweet_params)
      if sweet.save
        render json: sweet
      else
        render json: {message: sweet.errors}, status: 400
      end
    end

    def update
      if @sweet.update(sweet_params)
        render json: @sweet
      else
        render json: {message: sweet.errors}, status: 400
      end
    end

    def destroy
      if @sweet.destroy
        render status: 204
      else
        render json: {message: "Unable to remove this sweet"}, status: 400
      end
    end


    private

    def set_sweet
      @sweet = Sweet.find_by(id: params[:id])
    end

    def sweet_params
      params.require(:sweet).permit(:name, :ingredients, :directions, :cook_time, :likes)
    end
end
