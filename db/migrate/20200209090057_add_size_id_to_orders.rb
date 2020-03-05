class AddSizeIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :size_id, :integer
  end
end
