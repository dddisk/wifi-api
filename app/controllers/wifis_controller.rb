class WifisController < ApplicationController

  def index
    if params[:search].present?
      @locations = Wifi.near(params[:search], 1,
        :order => :distance)
    end
    binding.pry
  end

  def new
  end

  def create
    params = wifi_params
    @params = wifi_params.values
    @prefecture = params[:prefecture]
    @address = params[:latitude].to_i + params[:longitude].to_i
  end


  private

  def wifi_params
    params.permit(:prefecture, :latitude, :longitude)
  end
end
