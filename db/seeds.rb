# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do |i|
#   Article.create(title: "Article #{i}", body: "A Article #{i} from seeds.", price: i, status: "public")
# end

Article.destroy_all

50.times do |index|
  Article.create!(title: Faker::Book.title,
                  body: Faker::Lorem.paragraph(sentence_count: rand(2..8)),
                  price: Faker::Number.number(digits: 2),
                  status: "public")
end

puts "50 Articles created"
