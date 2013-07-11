class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(params[:article])
		@article.save
	end

	def index
		@article = Article.last
	end
end
