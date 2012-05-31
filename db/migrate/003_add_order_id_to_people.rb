class AddOrderIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :order_id, :integer
  end
end
