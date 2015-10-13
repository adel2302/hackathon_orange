class AddColumnsToTableUsers < ActiveRecord::Migration
  def change
  	add_column :users, :usermane, :string
  	add_column :users, :address, :string
  	add_column :users, :latitude, :float
  	add_column :users, :longitude, :float
  	add_column :users, :phone, :string
  	add_column :users, :role, :string
  end
end
