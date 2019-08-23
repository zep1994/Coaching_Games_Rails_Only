Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about', to: 'static#about'
end
