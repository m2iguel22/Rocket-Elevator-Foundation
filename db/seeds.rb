# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.create!(email: "nicolas.genest@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(6.years.ago, 5.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "david.boutin@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "remi.gagnon@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "mathieu.lefrancois@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "mathieu.lortie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "mathieu.houde@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "serge.savoie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "nadya.fortier@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
User.create!(email: "martin.chantal@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true, created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))


11.times do
    User.create!(
        email: Faker::Internet.email,
        password: '123456',
        created_at: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        updated_at: Faker::Time.between(6.months.ago, Time.now, :all)
    )
end


Employee.create!(first_name: 'Nicolas', last_name: 'Genest', title: 'Comm.Rep', email: 'nicolas.genest@codeboxx.biz', password: '123456', created_at: Faker::Time.between(6.years.ago, 5.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'David', last_name: 'Boutin', title: 'Engineer', email: 'david.boutin@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Remi', last_name: 'Gagnon', title: 'Engineer', email: 'remi.gagnon@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Mathieu', last_name: 'LeFrançois', title: 'Engineer', email: 'mathieu.lefrancois@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Mathieu', last_name: 'Lortie', title: 'Engineer', email: 'mathieu.lortie@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Mathieu', last_name: 'Houde', title: 'Engineer', email: 'mathieu.houde@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Serge', last_name: 'Savoie', title: 'Engineer', email: 'serge.savoie@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Nadya', last_name: 'Fortier', title: 'Director', email: 'nadya.fortier@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
Employee.create!(first_name: 'Martin', last_name: 'Chantal', title: 'Engineer', email: 'martin.chantal@codeboxx.biz', password: '123456', created_at: Faker::Time.between(5.years.ago, 4.years.ago, :all),  updated_at: Faker::Time.between(2.years.ago, Time.now, :all))
 

43.times do 
    Employee.create!(

        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        title: Faker::Construction.role,     
        email: Faker::Internet.email,
        password: '123456',
        created_at: Faker::Time.between(4.years.ago, 7.months.ago, :all),
        updated_at: Faker::Time.between(6.months.ago, Time.now, :all)
    )
end


40.times do
    Lead.create!(

        full_name: Faker::Name.first_name,
        company_name: Faker::Company.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        project_name: Faker::Company.industry,
        project_description: Faker::Company.type,
        department_in_charge: Faker::Commerce.department,
        message: Faker::Construction.subcontract_category,
        created_at: Faker::Time.between(5.months.ago, Time.now, :all),
        updated_at: Faker::Time.between(2.weeks.ago, Time.now, :all)
    )
  end

    status_array = ["Active", "Active", "Active", "Inactive"]
    type_of_building_array = ["Residential", "Commercial", "Corporative", "Hybrid"]
    type_of_service_array = ["Standard", "Premium", "Excelium"]

10.times do
    Address.create!(
    
        type_of_address: Faker::Name.name,
        status: status_array.sample,
        entity: 'Billing Address',
        number_and_street: Faker::Address.street_address,
        appartment_or_suit: Faker::Address.secondary_address,
        city: Faker::Address.city,
        zip_code: Faker::Address.zip_code,
        country: Faker::Address.country_name_to_code(name:'canada'),
        notes: Faker::Types.rb_string,
        created_at: Faker::Time.between(3.years.ago, 9.months.ago, :all),
        updated_at: Faker::Time.between(8.months.ago, Time.now, :all)
        )
        end

15.times do
    Address.create!(

        type_of_address: Faker::Name.name,
        status: status_array.sample,
        entity: 'Operational Building',
        number_and_street: Faker::Address.street_address,
        appartment_or_suit: Faker::Address.secondary_address,
        city: Faker::Address.city,
        zip_code: Faker::Address.zip_code,
        country: Faker::Address.country_name_to_code(name:'canada'),
        notes: Faker::Types.rb_string,
        created_at: Faker::Time.between(3.years.ago, 9.months.ago, :all),
        updated_at: Faker::Time.between(8.months.ago, Time.now, :all)
    )
    end

    address_id_array = [*1..10]
    user_id_array = [*11..20]

10.times do
    Customer.create!(

        company_name: Faker::Company.name,
        full_name: Faker::Name.first_name,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        company_description:  Faker::Company.type,
        full_name_of_technical_service: Faker::Company.name,
        phone_of_technical_service: Faker::PhoneNumber.phone_number,
        email_of_technical_service: Faker::Internet.email,
        address_id: address_id_array.delete(address_id_array.sample),
        user_id: user_id_array.delete(user_id_array.sample),
        created_at: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        updated_at: Faker::Time.between(6.months.ago, Time.now, :all)
    )
 end

    address_id_array = [*11..25]
    customer_id_array = [*1..10]

 15.times do
    Building.create!(

        admin_full_name: Faker::Name.first_name,
        admin_email: Faker::Internet.email,
        admin_phone: Faker::PhoneNumber.phone_number,
        contact_technic_full_name: Faker::Name.name,
        contact_technic_email: Faker::Internet.email,
        contact_technique_phone: Faker::PhoneNumber.phone_number,
        customer_id: customer_id_array.sample,
        address_id: address_id_array.delete(address_id_array.sample),
        created_at: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        updated_at: Faker::Time.between(6.months.ago, Time.now, :all)
    )
end

    building_id_array = [*1..15]

15.times do
    BuildingDetail.create!(

        information_key: Faker::Types.rb_string,
        value: Faker::Types.rb_string,
        building_id: building_id_array.delete(building_id_array.sample),
        created_at: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        updated_at: Faker::Time.between(6.months.ago, Time.now, :all)
    )
end

    building_id_array = [*1..15]
    employee_id_array = [*11..52]

15.times do
    Battery.create!(

        type_of_battery: type_of_building_array.sample,
        status: status_array.sample,
        starting_service_date: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        last_inspection_date: Faker::Time.between(1.year.ago, 1.week.ago, :all),
        operation_certificate: Faker::Code.isbn,
        information: Faker::Types.rb_string,
        notes: Faker::Types.rb_string,
        building_id: building_id_array.delete(building_id_array.sample),
        employee_id: employee_id_array.delete(employee_id_array.sample)
    )
end

    battery_id_array =[*1..15]

15.times do
    Column.create!(

        type_of_column: type_of_building_array.sample,
        number_of_floors_served: Faker::Number.number(2),
        status: status_array.sample,
        information: Faker::Types.rb_string,
        notes: Faker::Types.rb_string,
        battery_id: battery_id_array.delete(battery_id_array.sample)
    )
end

    battery_id_array =[*1..15]  

60.times do
    Column.create!(

        type_of_column: type_of_building_array.sample,
        number_of_floors_served: Faker::Number.number(2),
        status: status_array.sample,
        information: Faker::Types.rb_string,
        notes: Faker::Types.rb_string,
        battery_id: battery_id_array.sample
    )
end

    column_id_array =[*1..75]

75.times do
    Elevator.create!(

        serial_number: Faker::Code.isbn,
        model: type_of_service_array.sample,
        type_of_building: type_of_building_array.sample,
        status: status_array.sample,
        starting_service_date: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        last_inspection_date: Faker::Time.between(1.year.ago, 1.week.ago, :all),
        inspection_certificate: Faker::Code.isbn,
        information: Faker::Types.rb_string,
        notes: Faker::Types.rb_string,
        column_id: column_id_array.delete(column_id_array.sample)
    )
end

    column_id_array =[*1..75]

225.times do
    Elevator.create!(

        serial_number: Faker::Code.isbn,
        model: type_of_service_array.sample,
        type_of_building: type_of_building_array.sample,
        status: status_array.sample,
        starting_service_date: Faker::Time.between(3.years.ago, 7.months.ago, :all),
        last_inspection_date: Faker::Time.between(1.year.ago, 1.week.ago, :all),
        inspection_certificate: Faker::Code.isbn,
        information: Faker::Types.rb_string,
        notes: Faker::Types.rb_string,
        column_id: column_id_array.sample
    )
end


75.times do
    Quote.create!(

        name: Faker::Name.first_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        type_of_building: type_of_building_array.sample,
        apartments_number: Faker::Number.number(2),
        floors_number: Faker::Number.number(2),
        undergrounds_number: Faker::Number.number(2),
        stores_number: Faker::Number.number(2),
        cage_number: Faker::Number.number(2),
        parking_places: Faker::Number.number(2),
        companies_number: Faker::Number.number(2),
        occupants_per_floor: Faker::Number.number(2),
        open_hours: Faker::Number.number(2),
        estimate_cage_number: Faker::Number.number(2),
        range_of_elevator: type_of_service_array.sample,
        unit_price: Faker::Commerce.price(),
        elevator_price: Faker::Commerce.price(),
        installation_cost: Faker::Commerce.price(),
        total_price: Faker::Commerce.price(),
        created_at: Faker::Time.between(6.months.ago, 2.weeks.ago, :all),
        updated_at: Faker::Time.between(2.weeks.ago, Time.now, :all)
)
end

