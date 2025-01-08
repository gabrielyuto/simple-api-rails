Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :bookcases
  get "up" => "rails/health#show", as: :rails_health_check
  get '/hello', to: 'teste#hello'
end
