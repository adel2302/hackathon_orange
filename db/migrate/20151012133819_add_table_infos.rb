class AddTableInfos < ActiveRecord::Migration
  def change
  	create_table :infos 
  	add_column :infos, :title, :string
  	add_column :infos, :content, :text
  	add_column :infos, :user_id, :integer
  	add_index :infos, :user_id
  end
end
