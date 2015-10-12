class AddTablePosts < ActiveRecord::Migration
  def change
  	create_table :posts 
  	add_column :posts, :title, :string
  	add_column :posts, :description, :text
  	add_column :posts, :created_at, :datetime
  	add_column :posts, :user_id, :integer
  	add_index :posts, :user_id
  	add_column :posts, :category_id, :integer
  	add_index :posts, :category_id
  end
end