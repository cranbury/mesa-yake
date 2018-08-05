Rails.application.routes.draw do

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :live_feed

  resources :restaurants do
    get :availability, on: :collection 
    get :kitchen
    get :menu
    get :mesas
    resources :mesa do
      resources :products
    end
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