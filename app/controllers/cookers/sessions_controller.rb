class Cookers::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  #def new
  #end

  #def create
  #end

  #def sign_in_without_redirect(resource_or_scope, resource=nil)
  #end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
