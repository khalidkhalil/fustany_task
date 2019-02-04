# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#seed users
user = User.create!  :email => 'khalidkhalil1993@outlook.com',
 :password => 'fustany', :password_confirmation => 'fustany'

#seed products and categories
10.times do


  category = Category.new
  category.title = Faker::Commerce.department
  category.description = Faker::Lorem.words(rand(2..10))
  category.save

  product = Product.new
  product.title = Faker::Commerce.product_name
  product.price = Faker::Commerce.price
  product.description = Faker::Lorem.words(rand(2..10))
  product.category_id = category.id
  product.save

end
