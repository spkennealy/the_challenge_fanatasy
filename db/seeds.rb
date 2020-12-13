# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

# ADD LATER:
# Tower of Power, Doobey Boys, Khelani, Train, Rappin 4 tay, Marc E Bassy, 
# Tony toni tone, Scrapper Bike, Bobby Brackins, The Grouch, Luniz, Hieroglyphics, 

ActiveRecord::Base.transaction do

    User.create!(username: "sean", password: "theChallenge", email: "spkennealy@gmail.com")
    # curry = User.find_by(username: "Curry30")
    # curry_photo = open('https://s3-us-west-1.amazonaws.com/bayify-seeds/user_photos/Steph_Curry.jpg')
    # curry.profile_photo.attach(io: curry_photo, filename: 'Steph_Curry')

    User.create!(username: "kierstyn", password: "password", email: "kierstyn.moore@gmail.com")
    # bayify = User.find_by(username: "Bayify")
    # bayify_photo = open('https://bayify-seeds.s3-us-west-1.amazonaws.com/user_photos/bayify-logo.png')
    # bayify.profile_photo.attach(io: bayify_photo, filename: 'Bayify')
end 