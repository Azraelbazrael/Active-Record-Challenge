require_relative 'ar.rb'
Product.where(name: 'Broom').pluck(:id)
#232
Product.destroy(232)