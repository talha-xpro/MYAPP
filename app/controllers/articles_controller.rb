class ArticlesController < ApplicationController
  before_action :authenticate_user!
  around_action :around_method

  def index
    puts "Yielding index"
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
    authorize @article

    @article.destroy
    flash[:notice] = "\"#{@article.title}\" was successfully deleted."
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :price, :status, :article_avatar)
  end

  def around_method
    begin
      puts "From around_action before yielding"
      yield
      puts "From around_action after yielding"
    end
  end
end
