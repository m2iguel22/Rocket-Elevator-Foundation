# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

# 1500.times do
#     User.create!(
       
#         email: Faker::Internet.email,
#         password: '123456'
#     )
# end

# 50.times do 
#     Employee.create!(
#         email: Faker::Internet.email,
#         password: '123456'
#     )
# end

Employee.create(first_name: 'Nicolas', lastname: 'Genest', title: 'Comm.Rep', email: 'nicolas.genest@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'David', lastname: 'Boutin', title: 'Engineer', email: 'david.boutin@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Remi', lastname: 'Gagnon', title: 'Engineer', email: 'remi.gagnon@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Mathieu', lastname: 'LeFrançois', title: 'Engineer', email: 'mathieu.lefrancois@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Mathieu', lastname: 'Lortie', title: 'Engineer', email: 'mathieu.lortie@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Mathieu', lastname: 'Houde', title: 'Engineer', email: 'mathieu.houde@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Serge', lastname: 'Savoie', title: 'Engineer', email: 'serge.savoie@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Nadya', lastname: 'Fortier', title: 'Director', email: 'nadya.fortier@codeboxx.biz	', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Martin', lastname: 'Chantal', title: 'Engineer', email: 'martin.chantal@codeboxx.biz	', encrypted_password: BCrypt::Password.create('12345678'))
# Employee.create(firstname: 'Steve', lastname: 'Drolet-Toutant', title: 'Ass.Director', email: 'stevedt@codeboxx.biz', encrypted_password: BCrypt::Password.create('12345678'))
end