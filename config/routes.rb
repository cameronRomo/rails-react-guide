Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'new_recipes/index'
      post 'new_recipes/create'
      get '/show/:id', to: 'new_recipes#show'
      delete '/destroy/:id', to: 'new_recipes#destroy'
    end
  end
  root 'hompage#index'
  get '/*path' => 'hompage#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
