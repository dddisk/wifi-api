class WifisController < ApplicationController
  def index
    @tweet = Wifi.find(1)
  end
end
