class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # create article object in memory so you can build form UI
  def new
    @article = Article.new
  end

  def create
    # puts params[:article] === {"title"=>"555", "body"=>"555"}
    @article = Article.new(article_params)

    if @article.save
      # redirect_to will cause the browser to make a new request
      # Use redirect_to after mutating the database or application state
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
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
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end
  
  private
    def article_params
      # require and permit. 
      # The former is used to mark parameters as required. 
      # The latter is used to set the parameter as permitted and limit which attributes should be allowed for mass updating.
      params.require(:article).permit(:title, :body, :status)
    end
end




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