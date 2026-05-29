require_relative 'ar.rb'
load 'ar.rb'

product = Product.find(155).inspect

number_of_products = Product.count
low_stock = Product.where("stock_quantity < ?", 5).count 
c_product_above_ten = Product.where("name LIKE ? AND price >= ?", "C" + "%", 10).pluck(:name)
puts product
puts "There are #{number_of_products} in the products table."
puts "The number of products with the least amount of stock are: #{low_stock}."
puts "Products starting at 10 dollars are: #{c_product_above_ten}."

prod = Product.where(:id => 157).first
prod_cat = Product.find(157).category.name
puts prod_cat
#Condiments

condiment = Category.where(:name => 'Condiments').first

new_prod = condiment.products.build( name: 'Honey mustard', description: 'A bottle of rich, golden sauce, sweet and tangy.', price: '2.50', stock_quantity: 30)

new_prod.save
new_prod.inspect



