Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostsController
  get '/', to: 'posts#index', as: 'index_post'
  
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  get 'posts/edit/:id', to: 'posts#edit', as: 'edit_post'
  post 'posts/edit/:id', to: 'posts#update', as: 'update_post'
  delete 'posts/destroy/:id', to: 'posts#destroy', as: 'destroy_post'
  
  # CommentsController
  get 'posts/show/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
  post 'posts/show/:post_id/comments/new', to: 'comments#create', as: 'create_comment'
  
  # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  post 'topics/new', to: 'topics#create', as: 'create_topic'  # ２−９応用３
  
  get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
  post 'topic/edit', to: 'topics#update', as: 'update_topic'
  
end
