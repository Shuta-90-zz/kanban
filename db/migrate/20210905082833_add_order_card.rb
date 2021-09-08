class AddOrderCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :order, :integer
  end
end
