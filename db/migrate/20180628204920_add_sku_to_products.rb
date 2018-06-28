class AddSkuToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sku, :string

    add_index :products, :sku, unique: true
  end
end
