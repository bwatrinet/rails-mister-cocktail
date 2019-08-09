Rails.application.routes.draw do
  get "home", to: "cocktails#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end
