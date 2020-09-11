Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  root "items#index"
  #root to: 'transactions#index'
  #get 'transactions/index'
  #root "transactions#index"
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :transactions
  end
  resources :orders, only:[:index, :create]

end
