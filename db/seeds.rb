# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "deleting all users and maisons"
User.destroy_all
Maison.destroy_all

puts "creating users"
user1 = User.create(first_name: "Thibault", last_name: "Danel", password: "azerty", email: "thibault@mail.com")

puts "creating maisons"

# file1 = URI.open('https://www.ouestfrance-auto.com/p/yahooto/2073895_644460_1_fde73431e923dea035f7619a70c6e23d07e06f55_w_ouestfranceauto_.jpg')
maison1 = Maison.new(name: "Mina", surface: 150, capacity: 12, view: "garden", chambre: 6, available: true, user: user1)
