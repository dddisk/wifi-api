class WifisController < ApplicationController
  before_action :wifi_params, only: :create
  def index
  end

  def new
  end

  def create
    params = wifi_params
    @params = wifi_params.values
    @prefecture = params[:prefecture]
    @latitude = params[:latitude]
    @longitude = params[:longitude]
  end


  private

  def wifi_params
    params.permit(:prefecture, :latitude, :longitude)
  end
end
