class Commission < ApplicationRecord
  belongs_to :sale
  belongs_to :user

  enum status: [:pending, :paid]
end
