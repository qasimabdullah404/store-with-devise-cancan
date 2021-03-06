Rails.application.routes.draw do
  devise_for :users
  scope 'admin' do
    resources :users
  end
  resources :items
  resources :roles
  root to: "items#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
