Rails.application.routes.draw do
  # devise_for :users
  get 'posts/my_posts', to: 'posts#my_posts'

  devise_for :users,  :controllers => { :registrations => "users/registrations" }

  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/search', to: 'home#search'

end
