class ArticlesController < ApplicationController

	def index
		articles = Article.where('id > 0').pluck_all(:nytimes_title, :nytimes_link)
		@nytimes_uniq = articles.uniq.reverse.compact

		articles = Article.where('id > 0').pluck_all(:huff_title, :huff_link)
		@huffpost_uniq = articles.uniq.reverse

		articles = Article.where('id > 0').pluck_all(:fox_title, :fox_link)
		@foxnews_uniq = articles.uniq.reverse

		articles = Article.where('id > 0').pluck_all(:nypost_title, :nypost_link)
		@nypost_uniq = articles.uniq.reverse
	end

	def show
		@article = Article.last
	end

end
