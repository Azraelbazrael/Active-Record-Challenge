require_relative 'ar.rb'
Category.find_each do |categories|
    categories.products.each { |p| puts "#{p.name} - #{p.price}"}
end
