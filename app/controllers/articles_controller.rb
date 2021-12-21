=begin
Application classes and modules are available everywhere, you do not need and should not load anything under app with require. This feature is called autoloading, and you can learn more about it in Autoloading and Reloading Constants.

  You only need require calls for two use cases:
  
  To load files under the lib directory.
  To load gem dependencies that have require: false in the Gemfile.

=end

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
end
