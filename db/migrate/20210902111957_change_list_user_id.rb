class ChangeListUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :user, :reference, foregin_key: true, null:false
    remove_column :lists, :user_id, :integer
  end
end
