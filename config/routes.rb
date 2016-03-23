Rails.application.routes.draw do

  get "/home" => "pages#home"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"

  root "pages#home"

  # BlogPosts RESTful Resource
  get "/blog_posts" => "blog_posts#index"
  get "/blog_posts/new" => "blog_posts#new"
  get "/blog_posts/:id" => "blog_posts#show"
  post "/blog_posts" => "blog_posts#create"


end
