Rails.application.routes.draw do
  get 'post/index'
  get 'post/show'
  get 'post/create'
  get 'post/update'
  get 'post/destroy'
  get 'event/index'
  get 'event/show'
  get 'event/create'
  get 'event/update'
  get 'event/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
