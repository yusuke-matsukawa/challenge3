Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#top'
  get 'home/about' => 'home#about'

  resources :users, only: [:show, :index, :edit, :update]

  resources :books, only: [:show, :index, :create, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end

end