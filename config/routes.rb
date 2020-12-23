Rails.application.routes.draw do
  resources :quiz_questions
  resources :quizzes
  resources :favorite_posts
  resources :posts
  resources :goals
  resources :cart_items
  resources :wish_items
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
