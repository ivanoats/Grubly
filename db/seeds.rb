# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:username => "Admin", :email => "admin@example.com", :password => "password",
  :password_confirmation => "password", :role => "admin")

User.create(:username => "Owner1", :email => "owner1@example.com", :password => "password",
  :password_confirmation => "password", :role => "owner")

User.create(:username => "Owner2", :email => "owner2@example.com", :password => "password",
  :password_confirmation => "password", :role => "owner")

Restaurant.create(:name => "Metropolitan Grill", :address => "700 Stewart St, Seattle, WA 98000",
  :category => "American", :phone_number => "206-555-4646", :website => "www.metropolitangrill.com",
  :owner => 2)

Restaurant.create(:name => "The Triple Door", :address => "315 James St, Seattle, WA 98000",
  :category => "Thai", :phone_number => "206-555-6464", :website => "www.thetripledoor.com",
  :owner => 3)

Item.create(:dish_name => "Steak", :inventory => 100, :restaurant_id => 1, :dollars => 9, :cents => 99)

Item.create(:dish_name => "Fish and Chips", :inventory => 50, :restaurant_id => 1, :dollars => 15, :cents => 49)

Item.create(:dish_name => "Halibut", :inventory => 30, :restaurant_id => 1, :dollars => 49, :cents => 49)

Order.create(:restaurant_id => 1, :user_id => 1, :item_id => 1, :quantity => 3)
