# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
    @user = current_user
  end

  def show; end

  def new
    @article = Article.new
    session[:return_to] ||= request.referer
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to session.delete(:return_to), notice: 'ok!!!!'
    else
      render :new
    end
  end

  def edit
    session[:return_to] ||= request.referer
  end

  def update
    if @article.update(article_params)
      redirect_to session.delete(:return_to), notice: 'Update Success!!!!'
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