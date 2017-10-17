require 'csv'

CSV.foreach('db/jta_free_wifi.csv') do |row|

    Wifi.create(:name => row[1], :prefecture => row[7], :address => row[8], :latitude => row[18], :longitude => row[19])

end
