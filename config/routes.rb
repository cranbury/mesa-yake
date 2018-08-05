Rails.application.routes.draw do

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :orders do
      resources :products
    end
    get :kitchen
    namespace :admin do
      resources :orders
      resources :products
      resources :tables
      resources :waiters
    end
  end
end
