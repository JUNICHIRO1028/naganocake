# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  layout 'admin'

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end


  protected

  def after_sign_in_path_for(resource)
    admin_homes_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_admin_session_path
  end

  # If you have extra params to permit, append them to the sanitizer.

end
