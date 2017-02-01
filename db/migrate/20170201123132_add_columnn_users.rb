class AddColumnnUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address_city, :string
    add_column :users, :address_prefecture_name, :string
    add_column :users, :address_street, :string
    remove_column :users, :address, :string
  end
end
