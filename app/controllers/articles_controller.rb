class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles = Article.select('DISTINCT created_at, nytimes_title, nytimes_link, huff_title, huff_link, nypost_title, nypost_link, fox_title, fox_link')
	end

	def show
		@article = Article.last
	end
end
