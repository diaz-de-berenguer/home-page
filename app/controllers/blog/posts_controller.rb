class Blog::PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	http_basic_authenticate_with name: ENV['auth_name'], password: ENV['auth_password'], only: [:new, :create, :edit, :update, :destroy]

  def index
  	show   = params[:show] != 'unpublished'
  	@posts = BlogPost.where(published: show).order("created_at DESC")
  end

  def new
  	@post = BlogPost.new
  end

  def create
  	@post = BlogPost.new(post_params)
  	if @post.save
  		flash[:notice] = "Saved successfully"
  		redirect_to blog_post_path(@post)
  	else
  		flash[:alert] = "Unable to save. #{@post.errors.full_messages.to_sentence}"
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @post.update(post_params)
  		flash[:notice] = "Saved successfully"
  		redirect_to blog_post_path(@post)
  	else
  		flash[:alert] = "Unable to save. #{@post.errors.full_messages.to_sentence}"
  		render 'edit'
  	end
  end

  def destroy
  	if @post.published
	  	if @post.update(published: false)
	  		flash[:notice] = "Unpublished successfully"
	  		redirect_to blog_posts_path
	  	else
	  		flash[:alert] = "Unable to remove. #{@post.errors.full_messages.to_sentence}"
	  		render 'edit'
	  	end
	  else
	  	if @post.destroy
	  		flash[:notice] = "Deleted successfully"
	  		redirect_to blog_posts_path
	  	else
	  		flash[:alert] = "Unable to remove. #{@post.errors.full_messages.to_sentence}"
	  		render 'edit'
	  	end
	  end
  end

  private

  	def post_params
  		params.require(:blog_post).permit(:title, :header_image_url, :body, :short_description, :published)
  	end

  	def find_post
  		@post = BlogPost.friendly.find(params[:id])
  	end
end
