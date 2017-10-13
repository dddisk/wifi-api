class Wifi < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode if: Proc.new { |a| a.latitude_changed? or a.longitude_changed? }
end
