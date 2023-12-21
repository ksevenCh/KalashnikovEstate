Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'users#login'

  get '/login', to: 'users#login'
  post '/enter', to: 'users#enter'

  get '/registration', to: 'users#registration'
  post '/create', to: 'users#create'

  get '/products', to: 'products#index'
  get '/catalog', to: 'products#catalog'

  get '/mycart', to: 'cart#cart'
  get '/additem', to: 'cart#additem'
  get '/additem_cart', to: 'cart#additem_cart'
  get '/remove_item', to: 'cart#remove_item'

  get '/thank_you', to: 'thank_you#index'
  get '/thanks', to: 'thank_you#thank_you'
end
