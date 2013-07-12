class AddColumnToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :fox_link, :text
  	add_column :articles, :fox_title, :text
  	add_column :articles, :wsjournal_link, :text
  	add_column :articles, :wsjournal_title, :text
  end
end
