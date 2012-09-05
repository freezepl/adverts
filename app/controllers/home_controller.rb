class HomeController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]
  def index
    @adverts = Advert.all
  end

  def show
    @adverts = Advert.find(params[:id])
  end
end
