Rails.application.routes.draw do
  post '/recipes', to: 'recipes#index'
end
