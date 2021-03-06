class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def post_index
  	@author = Author.find(params[:id])
  	@posts = @author.posts
  	render template: 'posts/index'
  end

  def post
  	@author = Author.find(params[:id])
  	@post = Post.find(params[:id])
  	render template: 'posts/show'
  end

end