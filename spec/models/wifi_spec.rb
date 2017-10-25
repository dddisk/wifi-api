require 'rails_helper'

RSpec.describe Wifi, :type => :model do

  it 'model is true' do

    address = "成田市三里塚字御料牧場1-1"
    distance = 0.5
    limit = 5

    @locations = Wifi.alteration(address,distance,limit)

    @locations.each do |loca|
      expect(loca.size).to eq (5)
    end

  end
end
