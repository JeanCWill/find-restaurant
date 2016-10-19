Rails.application.routes.draw do
  root :to => "first_page#index"
  devise_for :users
  resources :restaurants, :restaurants_mobile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
