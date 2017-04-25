Rails.application.routes.draw do
  resources :events
  resources :categories

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :users

  post "/filter" => "events#index", as: "filter_event"

end
