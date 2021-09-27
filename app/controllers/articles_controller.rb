class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
    flash.now[:notice] = "Your book was found"

    # if @article.nil?
    #   flash.now[:alert] = "Your book was not found"
    #   redirect_to "index"
    # end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :price, :status)
  end
end
