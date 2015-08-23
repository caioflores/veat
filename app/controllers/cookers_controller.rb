class CookersController < ApplicationController

  before_action :verify_user

  def index
  end

  def new
  end

  def profile
  end

  def edit
  end

  private

  def verify_user
    if current_cooker
      redirect_to feed_path
    end
  end


end
