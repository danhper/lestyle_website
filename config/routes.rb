Rails.application.routes.draw do
  root to: 'static_pages#index'

  get 'menu', to: 'menu#show'

  get 'blog', to: 'posts#index'
  resources :posts, only: [:show]

  namespace :static_pages, path: '', as: '' do
    get 'about'
    get 'contact'
  end

  devise_for :admins

  devise_scope :admins do
    get "login", :to => 'devise/sessions#new'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
