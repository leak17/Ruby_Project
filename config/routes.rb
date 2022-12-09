Rails.application.routes.draw do
  get 'functional_nav_bar/home'
  get 'functional_nav_bar/about'
  get 'functional_nav_bar/community'
  get 'functional_nav_bar/contact'
  get 'functional_nav_bar/features'
  get 'functional_nav_bar/login_signup'
  resources :invoices

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "invoices#index"
end
