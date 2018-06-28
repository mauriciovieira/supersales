class Discount < ApplicationRecord
  upsert_keys [:coupon]

  enum status: [:active, :inactive]
  enum kind: [:percentage, :cash]
end
