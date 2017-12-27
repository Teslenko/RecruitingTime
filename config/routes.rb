Rails.application.routes.draw do


  get 'persons/profile'

  devise_for :users

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'

  get :search, controller: :candidates
  get :autocomplete, controller: :candidates

  get 'persons/profile', as: 'user_root'

  resources :candidates

  # root  'candidates#index'
  # root  'static_pages#home'

  root  'candidates#index'


end
