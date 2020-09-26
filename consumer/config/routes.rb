Rails.application.routes.draw do

  root "employees#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :employees

end
