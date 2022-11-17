Rails.application.routes.draw do
  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home_page#welcome"

  resources :posts, only: [:index, :show, :new, :create, :edit, :update] do
    resources :comments, only: [:index, :show, :new, :create, :edit, :update]
  end

end
