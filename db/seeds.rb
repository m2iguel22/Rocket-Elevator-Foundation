# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

 User.create!(email: "nicolas.genest@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "david.boutin@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "remi.gagnon@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "mathieu.lefrancois@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "mathieu.lortie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "mathieu.houde@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "serge.savoie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "nadya.fortier@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
# User.create!(email: "martin.chantal@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)


# 1.times do
#     User.create!(
#         email: Faker::Internet.email,
#         password: '123456'
#     )
# end


#   employee = Employee.create! :first_name => 'Nicolas', :last_name => 'Genest', :title => 'Comm.Rep', :email => 'nicolas.genest@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'David', :last_name => 'Boutin', :title => 'Engineer', :email => 'david.boutin@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Remi', :last_name => 'Gagnon', :title => 'Engineer', :email => 'remi.gagnon@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Mathieu', :last_name => 'LeFrançois', :title => 'Engineer', :email => 'mathieu.lefrancois@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Mathieu', :last_name => 'Lortie', :title => 'Engineer', :email => 'mathieu.lortie@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Mathieu', :last_name => 'Houde', :title => 'Engineer', :email => 'mathieu.houde@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Serge', :last_name => 'Savoie', :title => 'Engineer', :email => 'serge.savoie@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Nadya', :last_name => 'Fortier', :title => 'Director', :email => 'nadya.fortier@codeboxx.biz', :password => '123456'
#   employee = Employee.create! :first_name => 'Martin', :last_name => 'Chantal', :title => 'Engineer', :email => 'martin.chantal@codeboxx.biz', :password => '123456'
 

# 1.times do 
#     Employee.create!(

#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         title: Faker::Construction.role,     
#         email: Faker::Internet.email,
#         password: '123456'
#     )
# end


# 1.times do
#     Lead.create!(

#         full_name: Faker::Name.name,
#         company_name: Faker::Company.name,
#         email: Faker::Internet.email,
#         phone: Faker::PhoneNumber.phone_number,
#         project_name: Faker::Company.industry,
#         project_description: Faker::Company.type,
#         department_in_charge: Faker::Commerce.department,
#         message: Faker::Construction.subcontract_category
#     )
#   end


# 1.times do
#     Address.create!(

#         type_of_address: Faker::Name.name,
#         status: Faker::Name.name,
#         entity: Faker::Name.name,
#         number_and_street: Faker::Address.street_address,
#         appartment_or_suit: Faker::Address.secondary_address,
#         city: Faker::Address.city,
#         zip_code: Faker::Address.zip_code,
#         country: Faker::Address.country_name_to_code(name:'canada'),
#         notes: Faker::Types.rb_string
#     )
#     end

# 1.times do
#     Customer.create!(

#         company_name: Faker::Company.name,
#         full_name: Faker::Name.name,
#         phone: Faker::PhoneNumber.phone_number,
#         email: Faker::Internet.email,
#         company_description:  Faker::Company.type,
#         full_name_of_technical_service: Faker::Company.name,
#         phone_of_technical_service: Faker::PhoneNumber.phone_number,
#         email_of_technical_service: Faker::Internet.email,
#         address_id: 1,
#         user_id: 1
#     )
#  end


#  1.times do
#     Building.create!(

#         admin_full_name: Faker::Name.name,
#         admin_email: Faker::Internet.email,
#         admin_phone: Faker::PhoneNumber.phone_number,
#         contact_technic_full_name: Faker::Name.name,
#         contact_technic_email: Faker::Internet.email,
#         contact_technique_phone: Faker::PhoneNumber.phone_number,
#         customer_id: 1,
#         address_id: 1
#     )
# end


# 1.times do
#     BuildingDetail.create!(

#         information_key: Faker::Types.rb_string,
#         value: Faker::Types.rb_string,
#         building_id: 1
#     )
# end


# 1.times do
#     Battery.create!(

#         type_of_battery: Faker::Types.rb_string,
#         status: Faker::Types.rb_string,
#         operation_certificate: Faker::Code.isbn,
#         information: Faker::Types.rb_string,
#         notes: Faker::Types.rb_string,
#         building_id: 1,
#         employee_id: 1
#     )
# end


# 1.times do
#     Column.create!(

#         type_of_column: Faker::Types.rb_string,
#         number_of_floors_served: Faker::Number.number(2),
#         status: Faker::Types.rb_string,
#         information: Faker::Types.rb_string,
#         notes: Faker::Types.rb_string,
#         battery_id: 1
#     )
# end


# 1.times do
#     Elevator.create!(

#         serial_number: Faker::Code.isbn,
#         model: Faker::Types.rb_string,
#         type_of_building: Faker::Types.rb_string,
#         status: Faker::Types.rb_string,
#         inspection_certificate: Faker::Code.isbn,
#         information: Faker::Types.rb_string,
#         notes: Faker::Types.rb_string,
#         column_id: 1
#     )
# end


1.times do
    Quote.create!(

        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        type_of_building: Faker::Types.rb_string,
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
        range_of_elevator: Faker::Types.rb_string,
        unit_price: Faker::Number.number(2),
        elevator_price: Faker::Number.number(5),
        installation_cost: Faker::Number.number(5),
        total_price: Faker::Number.number(6)
)
end

