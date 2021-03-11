class ChangeTotalTypeToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :total, :float
  end
end
