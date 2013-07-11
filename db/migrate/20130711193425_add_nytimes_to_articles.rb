class AddNytimesToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :nytimes_link, :text
  	add_column :articles, :nytimes_title, :text
  end
end
