Rails.application.routes.draw do
  
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users/sign_out", to: "devise/sessions#destroy"
    
    devise_for :users
  end

  
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"

end
