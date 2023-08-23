Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostsController
  get 'posts/new', to: 'posts#new', as: "new_post"
  get '/', to: 'posts#index', as: "index_post"
  #課題2-5 3【応用】
  #new Action   edit Action
  get 'topics/create', to: 'topics#new', as: "new_topics"
  
  get 'topics/update', to: 'topics#edit', as: "edit_topics"
  
end
