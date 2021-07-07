Rails.application.routes.draw do
  post '/recipes', to: 'recipes#search'
  get '/recipes/ingredients', to: 'recipes#ingredients'
end
