Rails.application.routes.draw do
  devise_for :users, controllers: {
    # get '/users/sign_out' => 'devise/sessions#destroy'
    sessions: 'users/sessions'
  }

  root to: 'home#index'
end
