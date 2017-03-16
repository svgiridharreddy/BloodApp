class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def show
    @users = User.find(params[:id])
  end
end
