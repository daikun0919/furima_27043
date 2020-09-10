Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  post 'items/new'
  post "posts/:id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "items#index"
  #root 'transactions#index'
  # resources :users, only:
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :transactions
  end
  resources :orders, only:[:index, :create]

end
