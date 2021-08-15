Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/new'
  get 'customers/create'
  get 'customers/edit'
  get 'customers/update'
  get 'customers/destroy'
  devise_for :users, controllers: {
    # get '/users/sign_out' => 'devise/sessions#destroy'
    sessions: 'users/sessions'
  }

  root to: 'home#index'

  resources :customer
end
