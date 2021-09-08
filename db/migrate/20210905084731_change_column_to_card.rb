class ChangeColumnToCard < ActiveRecord::Migration[6.1]
  def up
    change_column :cards, :order, :integer
  end

  def down
    change_column :cards, :order, :integer, null: false
  end
end
