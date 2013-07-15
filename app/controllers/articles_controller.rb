class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.last
	end
end
