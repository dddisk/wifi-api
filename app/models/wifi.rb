class Wifi < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
    class << self
        def search(query)
            rel = order("number")
            if query.present?
                rel = rel.where("name LIKE ? OR full_name LIKE ?",
                "%#{query}%","%#{query}%")
            end
            rel
        end
    end
end
