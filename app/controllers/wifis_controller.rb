class WifisController < ApplicationController

  def index
    if wifi_params.present?
    address = wifi_params[:address]

    #距離のデフォルト指定
    distance = (wifi_params[:distance].to_f / 1000)
    if distance.zero?
      distance = 0.5
    end

    #件数のデフォルト指定
    limit = wifi_params[:limit].to_f
    if limit.zero?
      limit = 5
    end

    @locations = Wifi.alteration(address,distance,limit)
    binding.pry


    end


  end

  def new
  end

  def create
  end


  private

  def wifi_params
    params.permit(:address, :distance, :limit)
  end
end
