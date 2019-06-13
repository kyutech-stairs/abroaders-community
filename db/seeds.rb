# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#csv ファイルをここに読み込んでcreateをfしたらfor文みたいにできる
require "csv"

CSV.foreach('db/csv/sex.csv') do |sex|
    Sex.create(name: sex[0])
end

CSV.foreach('db/csv/language.csv') do |lang|
    Language.create(name: lang[0])
end