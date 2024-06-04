# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Game.destroy_all
User.destroy_all

10.times do
  User.create!(name: Faker::Name.name, email: "#{Faker::Creature::Animal.name}@gmail.com", password: Faker::App.name)
  game = Game.new(user: User.last, title: Faker::Game.title, category: Faker::Game.genre, price: 9.99)
  game.save
end
# User.create(name: "José", email: "jose@gmail.com", password: "josesenha")
# game1 = Game.new(user: User.last, title: "Algum ai", category: "alguma", price: 9.99)
# game1.save
