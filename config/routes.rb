Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostsController
  get 'posts/new' , to: 'post#new' , as: "new_post"
  
  #課題2-5 3【応用】
  #new Action   edit Action
  get 'topics/create' , to: 'topics#new' , as: "new_topics"
  
  get 'topics/update' , to: 'topics#edit' , sa: "edit_topics"
  
end
