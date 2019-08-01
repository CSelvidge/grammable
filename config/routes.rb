Rails.application.routes.draw do
  devise_for :users
  root "grams#index"
  resources :grams do
    resources :comments, only: [:new, :create]
  end
end
