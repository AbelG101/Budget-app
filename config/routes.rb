Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'categories#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'splash_screen#index', as: :unauthenticated_root
    end
  end
  resources :users do
    resources :categories do
      resources :purchases
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
