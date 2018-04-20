# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.create!(name: "Beverages")
Category.create!(name: "Books")
Category.create!(name: "Breads")
Category.create!(name: "Canned Foods")
Category.create!(name: "Clothes")
Category.create!(name: "Computers")
Category.create!(name: "Dry Foods")
Category.create!(name: "Frozen Foods")
Category.create!(name: "Furniture")
Category.create!(name: "Headphones")
Category.create!(name: "Magazines")
Category.create!(name: "Music")
Category.create!(name: "Other Electronics")
Category.create!(name: "Pastas")
Category.create!(name: "Portable Devices")
Category.create!(name: "Produce")
Category.create!(name: "Snacks")
Category.create!(name: "Software")
Category.create!(name: "Televisions")
Category.create!(name: "Toys")
Category.create!(name: "Video Games")
Category.create!(name: "Video Players")
Category.create!(name: "Videos")

Product.create!(name: "Tasty Baklava", price: 3.99, category: Category.find_by(name: "Dry Foods"))
Product.create!(name: "Flux Capacitor", price: 19.55, category: Category.find_by(name: "Other Electronics"))
Product.create!(name: "Technodrome", price: 12.49, category: Category.find_by(name: "Toys"))
Product.create!(name: "TextMate 2", price: 74.99, category: Category.find_by(name: "Software"))