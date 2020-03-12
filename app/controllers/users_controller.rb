class UsersController < ApplicationController

  def show
    @messages = Message.all #come back and scope this to the specific discussion(s)?
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.all
  end
end
