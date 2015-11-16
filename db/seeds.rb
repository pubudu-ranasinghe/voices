# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: 'Economy', description: 'Econmy description')
Category.create(name: 'Transport, Infrastructure and Development', description: 'Transport description')
Category.create(name: 'Energy', description: 'Energy description')
Category.create(name: 'Social Services', description: 'Social Services description')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')