Rails.application.routes.draw do

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :orders 
    get :kitchen
    get :menu
    get :mesas
    resources :mesa
    get :open
    post :meal
    namespace :admin do
      resources :orders
      resources :products
      resources :tables
      resources :waiters
    end
  end
end
