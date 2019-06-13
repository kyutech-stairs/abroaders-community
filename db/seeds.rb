# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/csv/kinds.csv') do |kind|
    Kind.create(name: kind[0])
end

CSV.foreach('db/csv/stay.csv') do |stay|
    Stay.create(name: stay[0])
end
