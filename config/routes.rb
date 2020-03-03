Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#new'
  put '/', to: 'sessions#create'
  get '/welcome', to: 'sessions#show'
  get '/secret', to: 'secrets#show'
  put '/logout', to: 'sessions#destroy'
end
