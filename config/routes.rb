Rails.application.routes.draw do
  resources :invoices


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "invoices#index"
end
