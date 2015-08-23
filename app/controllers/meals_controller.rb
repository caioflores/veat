class MealsController < ApplicationController

  before_action :verify_user

  def new
    @meal = Meal.new(cooker_id: current_cooker.id, participants_now: 0, participants_max: 0)
    @meal.save
  end

  def create
    @meal = current_cooker.meals.last
    @meal.update_attributes(meal_params)
    redirect_to feed_path
  end

  def managing
  end

  def edit
    redirect_to feed_path
  end

  def pay
  end

  def buy
    @meal = Meal.find(params[:id])
    @participation = Participation.new(meal_id: @meal.id, cooker_id: current_cooker.id)
    @participation.save
    @meal.participants_now += 1
    @meal.save
  end

  def index
    @meal = Meal.all.order('name ASC')
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :description, :category, :datetime, :adress, :price, :participants_max, :deliver)
  end

  def verify_user
    if !current_cooker
      redirect_to root_path
    end
  end

end
