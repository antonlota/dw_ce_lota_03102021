class RenameAmountToTotal < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :amount, :total
  end
end
