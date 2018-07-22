class RenameModelComissionToCommission < ActiveRecord::Migration[5.2]
  def change
    rename_table :comissions, :commissions
  end
end
