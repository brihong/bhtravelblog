class CreateShoutouts < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutouts do |t|
      t.text :message
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end

    add_index :shoutouts, [:user_id, :post_id]
    add_index :shoutouts, :post_id
  end
end
