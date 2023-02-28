Rails.application.routes.draw do
  resources :histories
  devise_for :users
  resources :cut_names
  resources :cuts
  resources :processed_products
  resources :name_of_products
  resources :product_types
  resources :cut_types
  resources :pieces
  resources :piece_names
  resources :channels do
    resources :pieces, only: [:new]
  end
  resources :suppliers
  resources :families
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
