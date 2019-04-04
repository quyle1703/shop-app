Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :profiles do
    resources :products, except: :show
  end
  resources :products, only: :show
  resources :carts, only: [:show] do
    post :add, path: "add/:id", on: :member
    get :checkout
  end

  resources :orders, only: [:create]

  namespace :admin do
    root to: "orders#index"
    resources :orders, only: [:index]
  end
end
