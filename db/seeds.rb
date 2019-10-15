# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker
User.create!(email: "nicolas.genest@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "david.boutin@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "remi.gagnon@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "mathieu.lefrancois@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "mathieu.lortie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "mathieu.houde@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "serge.savoie@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "nadya.fortier@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)
User.create!(email: "martin.chantal@codeboxx.biz", password: "123456", password_confirmation: "123456", admin: true)

1.times do
    User.create!(
       
        email: Faker::Internet.email,
        password: '123456'
    )
end

  employee = Employee.create! :first_name => 'Nicolas', :last_name => 'Genest', :title => 'Comm.Rep', :email => 'nicolas.genest@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'David', :last_name => 'Boutin', :title => 'Engineer', :email => 'david.boutin@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Remi', :last_name => 'Gagnon', :title => 'Engineer', :email => 'remi.gagnon@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Mathieu', :last_name => 'LeFrançois', :title => 'Engineer', :email => 'mathieu.lefrancois@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Mathieu', :last_name => 'Lortie', :title => 'Engineer', :email => 'mathieu.lortie@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Mathieu', :last_name => 'Houde', :title => 'Engineer', :email => 'mathieu.houde@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Serge', :last_name => 'Savoie', :title => 'Engineer', :email => 'serge.savoie@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Nadya', :last_name => 'Fortier', :title => 'Director', :email => 'nadya.fortier@codeboxx.biz', :password => '123456'
  employee = Employee.create! :first_name => 'Martin', :last_name => 'Chantal', :title => 'Engineer', :email => 'martin.chantal@codeboxx.biz', :password => '123456'
 
1.times do 
    Employee.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        title: Faker::Construction.role,     
        email: Faker::Internet.email,
        password: '123456'
    )




# 25.times do 
#     Contact.create!(
#         full_name: Faker::Name.first_name,
#         company:
#         email: Faker::Internet.email,                       ///// we wanted to create a contact table. We don't know if we'll have time so we'll just leave the faker here
#         phone:                                                   for the moment. 
#         project_name:
#         department_in_charge: Faker::Commerce.department
#         project:
#         message:


        
#     )
  end