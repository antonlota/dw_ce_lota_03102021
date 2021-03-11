# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product1 = Product.create(sku: "beef123", quantity: 54.8)
product2 = Product.create(sku: "pork123", quantity: 54.8 )
product3 = Product.create(sku: "chicken123", quantity: 54.8 )

customer1 = Customer.create(name: "Jane", email: "jane@email.com" )
customer2 = Customer.create(name: "Mark", email: "mark@email.com"  )
customer3 = Customer.create(name: "Marissa", email: "marissa@email.com"  )

four = Customer.first.id
five = (Customer.first.id + 1)
six = (Customer.first.id + 2)

order1 = Order.create(sku: "beef123", customer_id: four )
order2 = Order.create(sku: "beef123", customer_id: five )
order3 = Order.create(sku: "beef123", customer_id: six )
order4 = Order.create(sku: "pork123", customer_id: four )
order5 = Order.create(sku: "pork123", customer_id: five )
order6 = Order.create(sku: "pork123", customer_id: six )
order7 = Order.create(sku: "chicken123", customer_id: four )
order8 = Order.create(sku: "chicken123", customer_id: five )
order9 = Order.create(sku: "chicken123", customer_id: six )