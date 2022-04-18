# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "deleting all users and maisons"
Review.destroy_all
User.destroy_all
Maison.destroy_all

puts "creating users"
user1 = User.create(first_name: "Thibault", last_name: "Danel", password: "azerty", email: "thibault@mail.com")

puts "creating reviews"

# review1 = Review.create(content: 'Super séjour, super acceuil des proprio, maison top qualité, merci aux Danel', rating: 5)
# review2 = Review.create(content: 'Super séjour, super acceuil des proprio, maison top qualité, merci aux Danel', rating: 4)
# review3 = Review.create(content: 'Super séjour, super acceuil des proprio, maison top qualité, merci aux Danel', rating: 5)

puts "creating maisons"

file1 = File.open(Rails.root.join('app/assets/images/bleuse.png'))
puts 'file1 ok'
maison1 = Maison.new(name: "La Friendly", surface: 150, capacity: 12, view: "garden", chambre: 6, available: true, user: user1, price: 180)
puts 'maison1 ok'
maison1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
puts 'photo ok'

file2 = File.open(Rails.root.join('app/assets/images/parentale.jpg'))
maison2 = Maison.new(name: "la familliale", surface: 80, capacity: 6, view: "mer", chambre: 3, available: true, user: user1, price: 135)
maison2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

file3 = File.open(Rails.root.join('app/assets/images/ado.jpg'))
maison3 = Maison.new(name: "la Grange", surface: 90, capacity: 6, view: "mer", chambre: 4, available: true, user: user1, price: 125)
maison3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')


maison1.save
maison2.save
maison3.save


puts "#{User.count} user ont été crée"
puts "#{Maison.count} maisons ont été crée"
