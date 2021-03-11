class ProductsChangeTypeOfQuanityIntegerToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :quantity, :float
  end
end
