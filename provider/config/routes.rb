Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  resources :posts
  root "posts#index"

  namespace :api do
    namespace :v1 do
      get "me", to: "users#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
