Rails.application.routes.draw do

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :users, only: [:new, :create]

  resources :movies, except: :index

  root 'movies#index'
end
