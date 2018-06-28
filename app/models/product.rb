class Product < ApplicationRecord
  upsert_keys [:sku]

  enum status: [:active, :inactive]
  has_many :sales_items
end
