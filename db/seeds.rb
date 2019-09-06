# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/csv/gender.csv') do |g|
  Gender.create(name: g[0])
end

CSV.foreach('db/csv/countries.csv') do |c|
  Country.create(name: c[0])
end

CSV.foreach('db/csv/languages.csv') do |l|
  Language.create(name: l[0])
end

CSV.foreach('db/csv/stay_types.csv') do |s|
  StayType.create(name: s[0])
end

CSV.foreach('db/csv/users.csv', headers: true) do |u|
  User.create(
    name: u['name'],
    email: u['email'],
    gender_id: u['gender_id'],
    image: open("#{Rails.root}/db/user_images/#{u['image']}"),
    password: 'password'
  )
end