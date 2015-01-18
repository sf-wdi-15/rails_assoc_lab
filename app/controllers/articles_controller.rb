class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article.id)
  end

  def show
    @article = Article.find_by({id: params[:id]})
  end

  def edit
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
