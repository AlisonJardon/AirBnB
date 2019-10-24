# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#creation de 20 villes
20.times do
	City.create(city_name: Faker::Address.city)
end

#creation de 20 dogsitters
20.times do
	DogSitter.create(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

#creation de 20 chiens
20.times do
	Dog.create(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

#creation de 20 strolls
20.times do
	Stroll.create(dog_sitter_id: DogSitter.all.sample.id, dog_id: Dog.all.sample.id, city_id: City.all.sample.id, date: Faker::Date.in_date_period)
end