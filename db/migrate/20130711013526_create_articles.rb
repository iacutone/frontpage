class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	
			t.text :huff_title
			t.text :huff_link

      t.timestamps
    end
  end
end
