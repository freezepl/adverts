class HomeController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def show
    @adverts = Advert.find(params[:id])
  end
end
