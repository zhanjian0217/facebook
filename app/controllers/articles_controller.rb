# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to articles_path, notice: 'ok!!!!'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to articles_path, notice: 'Update Success!!!!'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: 'Delete Success!!!!'
  end

  private
  def article_params
    params.require(:article).permit(:content, :state)
  end

  def  find_article
    @article = Article.find(params[:id])
  end
end