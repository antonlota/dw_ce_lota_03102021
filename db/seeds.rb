# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product1 = Product.create(name: "beef", quantity: 15 )
product2 = Product.create(name: "pork", quantity: 15 )
product3 = Product.create(name: "chicken", quantity: 15 )

customer1 = Customer.create(name: "Jane", email: "jane@email.com" )
customer2 = Customer.create(name: "Mark", email: "mark@email.com"  )
customer3 = Customer.create(name: "Marissa", email: "marissa@email.com"  )

one = Product.first.id
two = (Product.first.id + 1)
three = (Product.first.id + 2)
four = Customer.first.id
five = (Customer.first.id + 1)
six = (Customer.first.id + 2)

order1 = Order.create(product_id: one, customer_id: four )
order2 = Order.create(product_id: one, customer_id: five )
order3 = Order.create(product_id: one, customer_id: six )
order4 = Order.create(product_id: two, customer_id: four )
order5 = Order.create(product_id: two, customer_id: five )
order6 = Order.create(product_id: two, customer_id: six )
order7 = Order.create(product_id: three, customer_id: four )
order8 = Order.create(product_id: three, customer_id: five )
order9 = Order.create(product_id: three, customer_id: six )