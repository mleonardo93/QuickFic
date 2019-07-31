Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :stories, only: [:new, :create, :edit, :update, :destroy]
  end
  root to: 'home#index'
end
