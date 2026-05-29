require_relative 'ar.rb'


number_of_products = Product.count
low_stock = Product.where("stock_quantity < ?", 5).count 
c_product_above_ten = Product.where("name LIKE ? AND price >= ?", "C" + "%", 10).pluck(:name)
puts "There are #{number_of_products} in the products table."
puts "The number of products with the least amount of stock are: #{low_stock}."
puts "Products starting at 10 dollars are: #{c_product_above_ten}."