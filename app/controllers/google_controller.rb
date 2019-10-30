class GoogleController < ApplicationController

     before_action :authenticate_user!

    def index    
        
        @marker_list = []
          
        
       
        Building.all.each do |b|
            building_address = b.address
            full_address = building_address.number_and_street + " " + building_address.city + " " + building_address.zip_code 
            resp = JSON.parse(Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{full_address}&key=AIzaSyC4Tqi-LZE8xyglM_EvOE-Z9rjwQyZp3-4").body)
            lat = resp['results'][0]['geometry']['location']['lat']
            lng = resp['results'][0]['geometry']['location']['lng']

            @marker_list << 
                lat = lat
                lng = lng
                address = b.address
                floor = b.batteries.columns[number_of_floors_served]
                name = b.admin_full_name
                battery = b.batteries.count
                bat_ids = b.battery_ids
                column = Column.where[battery_id: bat_ids].count
                col_ids = Column.where[battery_id: b.battery_ids].ids
                elevator = Elevator.where[column_id: col_ids].count
                contact = b.contact_technic_full_name
     
        end
    end
end