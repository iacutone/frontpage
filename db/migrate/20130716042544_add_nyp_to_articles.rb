class AddNypToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :nypost_link, :text
  	add_column :articles, :nypost_title, :text
  end
end
