# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)

require 'ffaker'
require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner[:active_record].strategy = :truncation

puts "CLEARING THE DATABASE!"
DatabaseCleaner.clean
puts "DATABASE CLEAN AS A WHISTLE!"

# create an Admin user
puts "Creating an Admin user."
default_admin = Admin.create(
  username: "rlblood",
  email: "user@test.com",
  password: "foobar"
)
default_admin.save
puts "#{default_admin.username} successfully created!"

puts "THE DATABASE IS NOW FILLED WITH SAMPLE DATA!"