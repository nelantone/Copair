Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }
  get 'user/:id' => 'users#show', :as => 'user'
  get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#home'
  post 'static_pages/thank_you'
end
