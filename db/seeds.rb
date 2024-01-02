# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all

require "faker"
require 'csv'

100.times do |i|
  Book.create(
    isbn: Faker::Code.isbn,
    name: Faker::Book.title,
    author: Faker::Book.author,
    year: Faker::Number.between(from: 1900,to: 2030),
    genre: Faker::Number.between(from: 1,to: 5),
    price: Faker::Commerce.price,
    status: Faker::Boolean.boolean
  )
end


CSV.foreach('Books.csv', headers: true) do |row|
  User.create(name: row['name'], email: row['email'], phone: row['phone'])
end
