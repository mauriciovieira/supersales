class SalesItem < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :sale
end
