class ArticlesController < ApplicationController

# allows user to sort blog posts
  def sort
    session[:sort_by] = params[:sort_by]
    redirect_to articles_path
  end

# controller to show all the blog posts
  def index
     @articles = Article.all
  end

# controller to show specific blog posts
  def show
    @article = Article.find(params[:id])
  end

  # Controller when you hit the new button
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

# Controller to create a new post
  def create
    @article = Article.new(article_params)
# if title is at least one letter the article is saved, otherwise it takes user back to "New"page
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

# updates existing post
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  # ensure that every new post has a title and text
  private
  def article_params
    params.require(:article).permit(:title, :text, :photo_url)
  end

end
