require "pg"
require "yaml"

class PgSync
    
    attr_accessor :pg_connection, :host, :port, :dbname, :user, :password

    def initialize()
        self.read_postgres_params
        self.create_pg_connection
    end
    
    def read_postgres_params
        
        info = YAML::load(IO.read("./config/database_dwh.yml"))
        self.host = info[Rails.env]["host"]
        self.port = info[Rails.env]["port"]
        self.dbname = info[Rails.env]["database"]
        self.user = info[Rails.env]["username"]
        self.password = info[Rails.env]["password"]

    end

    def create_pg_connection

        self.pg_connection = PG::Connection.open(host: self.host, 
        port: self.port, 
        dbname: self.dbname, 
        user: self.user, 
        password: self.password)
    end
    
    def sync_quotes

        Quote.all.each do |quote|
            sql_string = "INSERT INTO factquotes(company_name,email,nbelevator) 
            VALUES ('#{quote.name}','#{quote.email}','#{quote.nbelevator}');"    
            self.pg_connection.exec(sql_string)    
        end
    end

    def sync_contact
       
        Lead.all.each do |lead| 
            sql_string =  "INSERT INTO factcontact(company_name,email,project_name)
            VALUES ('#{lead.name}','#{lead.email}','#{lead.project_name}');"
            self.pg_connection.exec(sql_string) 
        end
    end

    def sync_elevator
       
        Elevator.all.each do |elevator| 
            sql_string = "INSERT INTO factelevator(serial_number,initial_service_name,building_city) 
            VALUES ('#{elevator.serial_number}','#{elevator.starting_service_date}','#{elevator.city}');"
            self.pg_connection.exec(sql_string) 
        end
     end

     def sync_dim_customers

        Customer.all.each do |customer| 
            sql_string = "INSERT INTO factelevator(company_name,company_contact_name,company_contact_email,number_elevators,client_city)
            VALUES ('#{customer.company_name}','#{customer.full_name}','#{customer.email}','#{customer.email}','#{customer.email}');"
            self.pg_connection.exec(sql_string) 
        end
    end



end