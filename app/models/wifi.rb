class Wifi < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?



  def self.alteration(ad,di,li)
    locations = near(ad, di, :untis => :km).limit(li)
  end
end
