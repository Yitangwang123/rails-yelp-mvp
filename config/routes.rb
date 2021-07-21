Rails.application.routes.draw do

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restaurants#index', as: :restaurants

  # # Add tasks
  # # show the form
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # # end the content and add a task
  # post '/restaurants', to: 'restaurants#create'

  # # See details about one task
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: :create
  end
end
