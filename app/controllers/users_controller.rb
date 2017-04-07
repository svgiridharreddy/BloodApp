class UsersController < ApplicationController

  # GET/PATCH /users/:id/finish_signup
  def finish_signup

    if request.patch? && params[:user] #&& params[:user][:email]
      if current_user.update(user_params)
#Add a comment to this line
        current_user.skip_reconfirmation!
        sign_in(current_user, bypass: true)
        redirect_to root_path, notice: 'Your profile was successfully updated.'
      else
        @show_errors = true
      end
    end
  end

  private

  def user_params
    accessible = [ :name, :email ] # extend with your own params
    accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
    params.require(:user).permit(accessible)
  end
end