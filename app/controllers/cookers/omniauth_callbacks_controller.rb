class Cookers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/cooker.rb)
    @cooker = Cooker.from_omniauth(request.env["omniauth.auth"])

    if @cooker.persisted?
      sign_in_and_redirect @cooker, :event => :authentication #this will throw if @cooker is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_cooker_registration_url
    end
  end

end