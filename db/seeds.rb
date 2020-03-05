# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Users being seeded"
user1 = User.create(username:'Basri', password:'password', password_confirmation:'password')
user2 = User.create(username:'Matt', password:'password', password_confirmation:'password')
puts "Users seeding complete"
product1 = Product.create(productname:'Know yourself. You can.',productcode:'T00001',productvalidity:true)
product2 = Product.create(productname:'Lets do it tshirt',productcode:'T00002',productvalidity:false)
puts "Products seeding complete"
size_S = Size.create(sizename:'Small')
size_M = Size.create(sizename:'Medium')
size_L = Size.create(sizename:'Large')
puts "Sizes seeding complete"
Order.create(user_id:user1.id,product_id:product1.id, size_id: size_S.id)
Order.create(user_id:user1.id,product_id:product1.id, size_id: size_M.id)
Order.create(user_id:user2.id,product_id:product1.id, size_id: size_M.id)
Order.create(user_id:user2.id,product_id:product1.id, size_id: size_L.id)
puts "Orders seeding complete"
