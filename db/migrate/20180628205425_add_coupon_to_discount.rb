class AddCouponToDiscount < ActiveRecord::Migration[5.2]
  def change
    add_column :discounts, :coupon, :string

    add_index :discounts, :coupon, unique: true
  end
end
