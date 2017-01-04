class AddColumnUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :string
    add_column :users, :user_id, :string
    add_column :users, :post_number, :integer
  end
end
