# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # redirect_to objectives_path
  # end

  # POST /resource
  # def create
  #  super
  # redirect_to objectives_path
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  def after_sign_in_path_for(resource)
    objectives_path
  end

  def after_update_path_for(resource)
    user_path(@user.id)
  end

  def update_resource(resource, params)
     resource.update_without_password(params)
  end

  def create_resource(resource, params)
    resource.create_without_profile(params)
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:nick_name,image])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:nick_name,:email,:profile])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   objectives_path
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  # objectives_path
  # end
end
