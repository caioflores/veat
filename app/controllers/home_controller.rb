class HomeController < ApplicationController

  before_action :verify_user

  def index

  end

  private

  def verify_user
    if current_cooker
      redirect_to feed_path
    end
  end
end