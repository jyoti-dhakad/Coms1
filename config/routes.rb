Rails.application.routes.draw do
  resources :instructors
  resources :students
  get 'download', to: 'students#download'
  root to: "homes#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  namespace :admin do
    resources :users do
      member do
        put :approve
        put :cancel
      end
    end
  end
end
