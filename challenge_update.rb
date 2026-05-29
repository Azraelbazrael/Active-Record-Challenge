require_relative 'ar.rb'
#high_stock = Product.where('stock_quantity > ?', 40).update_all("stock_quantity=stock_quantity+=1")
Product.where('stock_quantity > ?', 40).find_each do |products|
    
    products.stock_quantity
    products.save

end