Rails.application.routes.draw do
  resources :instructors
  resources :students
  root to: "homes#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    password: 'users/password',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out', to: 'users/sessions#destroy', as: :custom_sign_out
  end
end
