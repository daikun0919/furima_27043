Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  root "items#index"
  resources :items do
    resources :transactions
  end
  resources :orders, only:[:index, :create]

end
