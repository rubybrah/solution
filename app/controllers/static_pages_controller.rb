class StaticPagesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.offset(rand(Article.count)).first
  end

  def show
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end

  def social
    # static_page
  end

  def work
    # static_page
  end
end
