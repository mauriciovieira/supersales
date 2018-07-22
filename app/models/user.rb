class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  upsert_keys [:email]

  enum kind: [:salesperson, :manager]
  enum status: [:active, :inactive]
  has_many :commissions
  has_many :addresses
  has_many :clients
  has_many :sales_items
  has_many :sales
end