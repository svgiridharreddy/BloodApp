class UsersController < ApplicationController
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
 
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_now
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
        # UserEmail.welcome_email(@user).deliver_now
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def send_order_mail
    @user = User.find(params[:id])
    UserMailer.send_order_mail(@user).deliver_now
    flash[:notice]= "Email has been sent successfully!"
    redirect_to projects_path
  end
end