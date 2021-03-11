class OrderRenameProductIdToSkuAndChangeTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :product_id, :string
    rename_column :orders, :product_id, :sku
  end
end
