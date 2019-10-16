require "pg"

class PgSync
    
    attr_accessor :pg_connection
    def initialize()
    end
    
    #def create_pg_connection
        #pg.connec
    #end
    def sync_quotes
        conn = PG::Connection.open(host: "localhost", port: 5432, dbname: "dwh_development", user: "postgres", password: "codeboxx")
        quotes.each do |quote| 
      INSERT INTO factquotes(quote_id,creation_date,company_name,email,number_of_elevator)
      VALUES ('quote_id','created_at','name','email');
        
        
    end

    def sync_contact
        contact.each do |contact| 
      INSERT INTO factcontact(contact_id,creation_date,company_name,email,project_name) 
      VALUES ('contact_id','created_at','name','email','project_name');
        
        
    end

    def sync_elevator
       elevator.each do |elevator| 
      INSERT INTO factelevator(elevator_id,serial_number,initial_service_name,building_id,customer_id,building_city) 
      VALUES ('quote_id','serial_number','starting_service_date','building_id','customer_id','city');
        
        
    end


end