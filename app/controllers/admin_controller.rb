class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @users = User.all
    @admins = Admin.all
  end

  def show
    @users = User.all
    @admins = Admin.all
  end
  
  def destroy_user
    @user = User.find(params[:id])
    @user.destroy

    redirect_to admin_url, notice: 'User was successfully deleted.'
  end

end