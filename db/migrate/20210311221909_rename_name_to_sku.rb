class RenameNameToSku < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :name, :sku
  end
end
