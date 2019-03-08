Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes
  resources :recipe_types
  resources :cuisines
end
