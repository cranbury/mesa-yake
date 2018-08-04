Rails.application.routes.draw do

   root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    get :kitchen
    resources :admin, only: [] do
      collection do
        get :orders, controller: "admin"
        get :products, controller: "admin"
        get :tables, controller: "admin"
        get :waiters, controller: "admin"
      end
    end
  end
end
