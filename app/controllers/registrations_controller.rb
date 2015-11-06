class RegistrationsController < Devise::RegistrationsController

  def authenticate_user
  end


  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :img_url, :country, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :img_url, :country, :email, :password, :password_confirmation, :current_password)
  end
end