Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  get '/artists/:id', to: 'artists#show'
  get '/artists/:id/songs', to: 'artist_songs#index'
end
