class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to posts_index_path
    else
      render :new
    end
  end

  def new
    #Captura los datos enviados en el formulario
    @post = Post.new
  end


  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end

end
