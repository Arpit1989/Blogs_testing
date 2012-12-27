# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'Adminstrator' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Arpit', :email => 'speak2arpit@example.com', :password => '1234567', :password_confirmation => '1234567'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Praggo', :email => 'praggo@example.com', :password => 'praggo', :password_confirmation => 'praggo'
puts 'New user created: ' << user2.name
user.add_role :admin
user2.add_role :VIP
