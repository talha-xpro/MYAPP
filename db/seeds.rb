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

# Article.destroy_all

# 50.times do |index|
#   @article = Article.create!(title: Faker::Book.title,
#                              body: Faker::Lorem.paragraph(sentence_count: rand(2..8)),
#                              price: Faker::Number.number(digits: 2),
#                              status: "public")
#   puts "#{index} Articles created"

#   5.times do |i|
#     @article.comments.create!(commenter: Faker::Name.name,
#                               body: Faker::Lorem.paragraph(sentence_count: rand(2..3)),
#                               status: "public")
#     puts "#{i} Comment created"
#   end
# end

1000.times do |index|
  Band.create!(name: Faker::Book.title)
  puts "#{index} Bands created"
end
