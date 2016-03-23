class BlogPostsController < ApplicationController

  def index

    @blog_posts = BlogPost.all

    render("index")
  end

  def show
    @blog_post = BlogPost.find params[:id]
    
    render("show")
  end

  def new
    @blog_post = BlogPost.new
    render("new")
  end

  def create
    blog_post_params = params.require(:blog_post).permit(:title, :body)
    @blog_post = BlogPost.new(blog_post_params)

    if @blog_post.save
      redirect_to "/blog_posts/" + @blog_post.id.to_s
    else
      render("new")
    end

  end

end