class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.text :title, null:false
      t.integer :user_id, foregin_key: true, null:false

      t.timestamps
    end
  end
end
