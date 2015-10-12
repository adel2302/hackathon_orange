class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
  	params.require(:user).permit(:usermane, :email, :password, :password_confimation, :address, :phone, :role)
  end

  def account_update_params
    params.require(:user).permit(:usermane, :email, :password, :password_confimation, :address, :phone, :role)
  end
end
