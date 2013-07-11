class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
		@article = Article.find(params[:id])
	end

	def index
		@article = Article.all
	end
end
