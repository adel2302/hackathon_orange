class Categories < ActiveRecord::Migration
  def change
  	create_table :categories 
  	add_column :categories, :name, :string
  	add_column :categories, :description, :text
  end
end
