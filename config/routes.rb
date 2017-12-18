Rails.application.routes.draw do


  devise_for :users

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'

  get :search, controller: :candidates
  get :autocomplete, controller: :candidates

  resources :candidates


  # root  'candidates#index'
  root  'static_pages#home'

  root  'candidates#index'


end
