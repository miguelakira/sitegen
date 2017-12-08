Rails.application.routes.draw do
  get 'sites/index'

  get 'home/index'

  get 'home/indedx'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "/sites/:title", to: "sites#show"
end
