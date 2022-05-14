Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  get '/artists', to: 'artists#index'
  post '/artists', to: 'artists#create'
  get '/artists/new', to: 'artists#new'
  get '/artists/:id', to: 'artists#show'
  patch 'artists/:id', to: 'artists#update'
  get '/artists/:id/songs', to: 'artist_songs#index'
  get 'artists/:id/edit', to: 'artists#edit'
end
