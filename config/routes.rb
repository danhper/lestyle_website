Rails.application.routes.draw do
  root to: 'static_pages#index'

  scope :static_pages, controller: 'static_pages' do
    get 'about'
  end

  devise_for :admins

  devise_scope :admin do
    get "login", :to => 'devise/sessions#new'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
