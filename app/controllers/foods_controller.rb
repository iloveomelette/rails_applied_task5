class FoodsController < ApplicationController
  def index; end

  def new
    @food = Food.new
  end

  def create
    food = current_user.foods.create!(food_params)
    redirect_to food
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def food_params
    params.require(:food).permit(:name)
  end
end
