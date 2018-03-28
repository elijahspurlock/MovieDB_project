Rails.application.routes.draw do
  get 'website/index'
  
  #get 'movies/mum'

  resources :movies 
  resources :users
  root 'website#index' # plug the website homepage / to use the route website/index defined above
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
