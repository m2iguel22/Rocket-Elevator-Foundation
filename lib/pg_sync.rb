require "pg"
require "yaml"
require 'faker'

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

        pg_connection.exec("TRUNCATE fact_quotes RESTART IDENTITY")
        Quote.all.each do |quote|
            
            sql_string = "INSERT INTO fact_quotes(quote_id,creation_date,company_name,email,number_of_elevator) 
            VALUES (#{quote.id},'#{quote.created_at}','#{quote.company}','#{quote.email}','#{quote.estimate_cage_number}');"    
            self.pg_connection.exec(sql_string)    
        end
    end

    def sync_contact

        pg_connection.exec("TRUNCATE fact_contacts RESTART IDENTITY")      
        Lead.all.each do |lead| 
   
            sql_string =  "INSERT INTO fact_contacts(contact_id,creation_date,company_name,email,project_name)
            VALUES (#{lead.id},'#{lead.created_at}','#{lead.company_name}','#{lead.email}','#{lead.project_name}');"
            self.pg_connection.exec(sql_string) 
        end
    end

    def sync_elevator

        pg_connection.exec("TRUNCATE fact_elevators RESTART IDENTITY")   
        Elevator.all.each do |elevator|

            sql_string = "INSERT INTO fact_elevators (elevator_id,serial_number,initial_service_date,building_id,customer_id,city_of_building) 
            VALUES (#{elevator.id},'#{elevator.serial_number}','#{elevator.starting_service_date}','#{elevator.column.battery.building.id}','#{elevator.column.battery.building.customer.id}','#{elevator.column.battery.building.address.city}');"
            self.pg_connection.exec(sql_string) 
        end
     end

     def sync_dim_customers

        pg_connection.exec ("TRUNCATE dim_customers RESTART IDENTITY")
        Customer.all.each do |customer| 

            nbElevator = 0
            customer.buildings.all.each do |building|
               
                building.batteries.all.each do |battery|
                    
                    battery.columns.all.each do |column|
                      
                        nbElevator += column.elevators.count
                           
                    end
                end
            end
            sql_string = "INSERT INTO dim_customers (creation_date,company_name,company_contact_name,company_contact_email,number_elevators,client_city)
            VALUES ('#{customer.created_at}','#{customer.company_name}','#{customer.full_name}','#{customer.email}','#{nbElevator}','#{customer.address.city}');"
            self.pg_connection.exec(sql_string) 
        end
    end

    def sync_fact_intervention
        pg_connection.exec ("TRUNCATE fact_interventions RESTART IDENTITY")
        Battery.all.each do |battery|

            bat_int_array_status = ["In progress", "Resumed"]
            if battery.status == 'Intervention'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,battery_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{battery.employee.id}','#{battery.building.id}','#{battery.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Incomplete', '#{Faker::Types.rb_string}', '#{bat_int_array_status.sample}');"
                self.pg_connection.exec(sql_string)
            end
            if battery.status == 'Inactive'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,battery_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{battery.employee.id}','#{battery.building.id}','#{battery.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Failed', '#{Faker::Types.rb_string}', 'Interrupted');"
                self.pg_connection.exec(sql_string)
            end
        end
        battery_array = []
        Battery.all.each do |battery|        
            battery_array = battery_array.push(battery)
            

        end
        for x in 1..4
            start = Faker::Time.between(2.years.ago, 4.days.ago)
            ending = Faker::Time.between(start, start + 1.month)
            battery = battery_array.sample
            bat_other_array_status = ["Pending","In progress", "Interrupted", "Resumed", "Complete"]
            bat_array_result = ["Success", "Failed", "Incomplete"]

            sql_string = "INSERT INTO fact_interventions (employee_id, building_id, battery_id, date_time_start_intervention, date_time_end_intervention, results, reports, status)
            VALUES (#{battery.employee_id}, '#{battery.building_id}', '#{battery.id}', '#{start}', '#{ending}', '#{bat_array_result.sample}', '#{Faker::Types.rb_string}', '#{bat_other_array_status.sample}');"
            self.pg_connection.exec(sql_string)            
        end


        Column.all.each do |column|

            col_int_array_status = ["In progress", "Resumed"]
            if column.status == 'Intervention'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,column_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{column.battery.employee.id}','#{column.battery.building.id}','#{column.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Incomplete', '#{Faker::Types.rb_string}', '#{col_int_array_status.sample}');"
                self.pg_connection.exec(sql_string)
            end
            if battery.status == 'Inactive'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,column_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{column.battery.employee.id}','#{column.battery.building.id}','#{column.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Failed', '#{Faker::Types.rb_string}', 'Interrupted');"
                self.pg_connection.exec(sql_string)
            end
        end
        column_array = []
        Column.all.each do |column|        
            column_array = column_array.push(column)
            
        end
        for x in 1..12
            start = Faker::Time.between(2.years.ago, 4.days.ago)
            ending = Faker::Time.between(start, start + 1.month)
            column = column_array.sample
            col_other_array_status = ["Pending","In progress", "Interrupted", "Resumed", "Complete"]
            col_array_result = ["Success", "Failed", "Incomplete"]

            sql_string = "INSERT INTO fact_interventions (employee_id, building_id, column_id, date_time_start_intervention, date_time_end_intervention, results, reports, status)
            VALUES (#{column.battery.employee_id}, '#{column.battery.building_id}', '#{column.id}', '#{start}', '#{ending}', '#{col_array_result.sample}', '#{Faker::Types.rb_string}', '#{col_other_array_status.sample}');"
            self.pg_connection.exec(sql_string)            
        end
        

        Elevator.all.each do |elevator|

            ele_int_array_status = ["In progress", "Resumed"]
            if elevator.status == 'Intervention'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,elevator_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{elevator.column.battery.employee.id}','#{elevator.column.battery.building.id}','#{elevator.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Incomplete', '#{Faker::Types.rb_string}', '#{ele_int_array_status.sample}');"
                self.pg_connection.exec(sql_string)
            end
            if battery.status == 'Inactive'
                sql_string = "INSERT INTO fact_interventions (employee_id,building_id,elevator_id,date_time_start_intervention,results,reports,status)
                VALUES ('#{elevator.column.battery.employee.id}','#{elevator.column.battery.building.id}','#{elevator.id}', '#{Faker::Time.between(3.days.ago, Time.now)}' , 'Failed', '#{Faker::Types.rb_string}', 'Interrupted');"
                self.pg_connection.exec(sql_string)
            end
        end
        elevator_array = []
        Elevator.all.each do |elevator|        
            elevator_array = elevator_array.push(elevator)
            
        end
        for x in 1..24
            start = Faker::Time.between(2.years.ago, 4.days.ago)
            ending = Faker::Time.between(start, start + 1.month)
            elevator = elevator_array.sample
            ele_other_array_status = ["Pending","In progress", "Interrupted", "Resumed", "Complete"]
            ele_array_result = ["Success", "Failed", "Incomplete"]

            sql_string = "INSERT INTO fact_interventions (employee_id, building_id, elevator_id, date_time_start_intervention, date_time_end_intervention, results, reports, status)
            VALUES (#{elevator.column.battery.employee_id}, '#{elevator.column.battery.building_id}', '#{elevator.id}', '#{start}', '#{ending}', '#{ele_array_result.sample}', '#{Faker::Types.rb_string}', '#{ele_other_array_status.sample}');"
            self.pg_connection.exec(sql_string)            
        end
    end


end
