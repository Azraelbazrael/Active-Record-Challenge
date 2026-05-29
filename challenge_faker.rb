require_relative 'ar.rb'

#Faker::Config.random = Random.new(10)
x = 10
while x >= 1
    x = x - 1
    new_cat = Category.find_or_create_by(name: Faker::Food.ingredient)
    new_cat.save
    new_prod = new_cat.products.build(name: Faker::Food.dish, description: Faker::Food.description,price: Faker::Number.decimal(l_digits: 2),  stock_quantity: Faker::Number.number(digits: 2))
    new_prod.save
end
