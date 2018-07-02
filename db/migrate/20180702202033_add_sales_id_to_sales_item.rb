class AddSalesIdToSalesItem < ActiveRecord::Migration[5.2]
  def change
    add_column :sales_items, :sale_id, :integer
  end
end
