Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  root "articles#index"

  resources :articles do
    # creates comments as a nested resource within articles
    resources :comments
  end

end
