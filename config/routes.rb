Rails.application.routes.draw do
  resources :bands
  devise_for :users
  root "articles#index"
  resources :articles do
    resources :comments
  end
  # get "/articles", to: "articles#index"c
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
