class Discount < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:percentage, :cash]
end
