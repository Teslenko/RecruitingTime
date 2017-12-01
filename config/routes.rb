Rails.application.routes.draw do

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'

  get :search, controller: :candidates
  get :autocomplete, controller: :candidates

  resources :candidates

  root  'candidates#index'

end
