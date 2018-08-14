Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :foods, only: %i[index show create update destroy]
      get '/meals', to: 'meals#index'
    end
  end
end
