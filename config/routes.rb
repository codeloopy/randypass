Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "items#index"
  
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users/sign_out", to: "devise/sessions#destroy"
    
    devise_for :users
  end

  
  resources :items

end
