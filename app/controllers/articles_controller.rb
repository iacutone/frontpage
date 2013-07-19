class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		distinct_articles = Article.select('DISTINCT id, created_at, nytimes_title, nytimes_link, huff_title, huff_link, nypost_title, nypost_link, fox_title, fox_link')
		@articles = distinct_articles.order('id DESC')
	end

	def show
		@article = Article.last
	end
end
