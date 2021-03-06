Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :foods, only: %i[index show create update destroy]
      get '/meals', to: 'meals#index'
      get '/meals/:id/foods', to: 'meals#show'
      post '/meals/:meal_id/foods/:id', to: 'meal_foods#create'
      delete '/meals/:meal_id/foods/:id', to: 'meal_foods#destroy'
    end
  end
end
