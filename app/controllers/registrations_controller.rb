class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update(user_params)

    redirect_to user_profiles_path(current_user)
  end
  
  private

  def user_params
		params.require(:user).permit(:email, :password, :first_name, :last_name, :description)
  end
end 