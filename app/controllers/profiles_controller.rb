class ProfilesController < ApplicationController

  def new
    @profile = Profile.new(cooker_id: current_cooker.id, name: current_cooker.name)
    @profile.save
  end

  def create
    @profile = current_cooker.profile
    @profile.update_attributes(profile_params)
    redirect_to feed_path
  end

  def show
    @profile = current_cooker.profile
  end

  def edit
  end

  private

  def profile_params
    params.require(:profile).permit(:cooker_id, :name, :cep, :adress, :city, :state, :phone)
  end

end
