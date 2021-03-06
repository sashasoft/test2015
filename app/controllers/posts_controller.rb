class PostsController < ApplicationController
  #before_filter :authenticate_user!, :except => [:show, :index]
  load_and_authorize_resource
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def show
    #@post = Post.find(params[:id])
  end
   
  def edit
    #@post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
   
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to posts_path
  end
  
  def form
    @a 
  end
  
  def sum
    @b = 0;
    if params[:arch]
      @b = 100
    end
    
      @b = @b.to_f + params[:pl].to_f
      
      @p = Post.last
      @b = @b.to_f + @p.id.to_f
      
    
  end
 
private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
