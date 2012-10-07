class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @users = User.order("created_at DESC")
    @admins = Admin.all
    @adverts = Advert.order("created_at DESC")
  end

  def show
    @users = User.all
    @admins = Admin.all
  end

  def edit_advert
    @advert = Advert.find(params[:id])
  end

  def update_advert
    @advert = Advert.find(params[:id])

    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        format.html { redirect_to admin_url, notice: 'Advert was successfully updated.' }
      else
        format.html { render action: "edit_advert" }
      end
    end
  end
  
  def destroy_user
    @user = User.find(params[:id])
    @user.destroy

    redirect_to admin_url, notice: 'User was successfully deleted.'
  end

  def destroy_advert
    @advert = Advert.find(params[:id])
    @advert.destroy

    redirect_to admin_url, notice: 'Advert was successfully deleted.'
  end

end