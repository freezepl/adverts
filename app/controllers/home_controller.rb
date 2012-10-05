class HomeController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]
  def index
    @search = Advert.search(params[:search])
    @adverts = @search.all
  end

  def show
    @adverts = Advert.find(params[:id])
  end
end
