Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  post 'items/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "items#index"
  # resources :users, only:
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :transactions
  end

end
