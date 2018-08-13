class Api::V1::FoodsController < ApplicationController
  def index
    render json: Food.all
  end

  def show
    if Food.exists?(params[:id])
      render json: Food.find(params[:id])
    else
      render status: 404
    end
  end

  def create
    food = Food.new(food_params)
    if food.save
      render json: food
    else
      render status: 400
    end
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
    render json: food
  end

  private

    def food_params
      params.require(:food).permit(:name, :calories)
    end
end
