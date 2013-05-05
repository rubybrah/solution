class StaticPagesController < ApplicationController

  def index
    if params[:tag]
      render_tags
    else
      render_articles
    end
  end

  def show
    render_tags
  end

  def social

  end

  def work

  end
  private
  def render_articles
    @articles = Article.all
  end

  def render_tags
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end
end
