class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  # A product table contains: 
  # a Product ID, a name, a description, a price, stock quantity, a category id, 
  # a date when the product was created at and when it was last updated

  belongs_to :category
end