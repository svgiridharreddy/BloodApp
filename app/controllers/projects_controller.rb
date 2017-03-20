class ProjectsController < ApplicationController
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
      puts "#{params[:search]}"
    else
      @users = User.all
    end
  end
end



