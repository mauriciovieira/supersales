class User < ApplicationRecord
  enum kind: [:salesperson, :manager]
  enum status: [:active, :inactive]
  has_many :comissions
  has_many :addresses
  has_many :clients
  has_many :sales_items
  has_many :sales
end