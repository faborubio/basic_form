Rails.application.routes.draw do
  get 'journalists/index'
  get 'journalists/create'
  get 'journalists/new'
  get 'posts/index'
  get 'posts/create'
  get 'posts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 #Rutas Post
 post "posts" => "posts#create"
 post "journalists" => "journalists#create"
 # root "articles#index"
end
