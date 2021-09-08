class RenameOrderColumnToCards < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :order , :order_id
  end
end
