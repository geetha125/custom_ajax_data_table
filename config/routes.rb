Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html  
  get '/list_users', to:'users#index'   

  root to: 'home#home' 

end
