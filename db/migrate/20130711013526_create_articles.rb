class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	
    	t.string :huff_title
    	t.string :huff_link

      t.timestamps
    end
  end
end
