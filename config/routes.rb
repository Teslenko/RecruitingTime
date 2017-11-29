Rails.application.routes.draw do

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'


  resources :candidates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'candidates#index'

end
