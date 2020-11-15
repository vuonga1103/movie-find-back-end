Rails.application.routes.draw do
  resources :movies

  post '/movies/:id/remove-dislike', to: 'movies#remove_dislike'
  post '/movies/:id/add-dislike', to: 'movies#add_dislike'
  post '/movies/:id/remove-like', to: 'movies#remove_like'
  post '/movies/:id/add-like', to: 'movies#add_like'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
