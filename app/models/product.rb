class Product < ApplicationRecord
  enum status: [:active, :inactive]
  has_many :sales_items
end
