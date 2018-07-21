class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :discount
  has_one :commission
  has_many :sales_items

  after_save do
    calc = 0
    self.sales_items.each {|p| calc += p.product.price * p.quantity }

    if self.discount&.percent?
      calc -= calc / self.discount.value
    elsif self.discount&.cash?
      calc -= self.discount.value
    end

    if self.commission.present?
      self.commission.update(value: (calc * 0.1), status: :pending)
    else
      Commission.create(value: (calc * 0.1), user: self.user, sale: self, status: :pending)
    end
  end
end
