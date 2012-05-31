class AddPasswordToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :password, :string
  end
end
