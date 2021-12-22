=begin
Application classes and modules are available everywhere, you do not need and should not load anything under app with require. This feature is called autoloading, and you can learn more about it in Autoloading and Reloading Constants.

  You only need require calls for two use cases:
  
  To load files under the lib directory.
  To load gem dependencies that have require: false in the Gemfile.

  class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
  
    def show
      @article = Article.find(params[:id])
    end
  
    def new
      @article = Article.new
    end
  
    def create
      @article = Article.new(title: "...", body: "...")
  
      if @article.save
        redirect_to @article
      else
        render :new, status: :unprocessable_entity
      end
    end
  end
=end


class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # puts params[:article] === {"title"=>"555", "body"=>"555"}
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def article_params
      # require and permit. 
      # The former is used to mark parameters as required. 
      # The latter is used to set the parameter as permitted and limit which attributes should be allowed for mass updating.
      params.require(:article).permit(:title, :body)
    end
end

