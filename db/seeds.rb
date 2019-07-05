# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#csvのファイルを読み込ませるとcreateを何回も書かなくても実行できる

require "csv"

CSV.foreach('db/csv/kinds.csv') do |kind|
    Kind.create(name: kind[0])
end

CSV.foreach('db/csv/stay.csv') do |stay|
    Stay.create(name: stay[0])
end

CSV.foreach('db/csv/country.csv') do |country|
  Country.create(name: country[0])
end

CSV.foreach('db/csv/sex.csv') do |sex|
    Sex.create(name: sex[0])
end

CSV.foreach('db/csv/language.csv') do |lang|
    Language.create(name: lang[0])
end
