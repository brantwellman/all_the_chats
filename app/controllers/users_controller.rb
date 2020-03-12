class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    
    @messages = Message.all #come back and scope this to the specific discussion(s)?
  end

  def index
    @users = User.all
  end
end