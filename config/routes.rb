Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sites, except: [:new, :edit]
    end
  end

  get 'sites/', to: 'sites#index'
  get 'home/index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get '/sites/:id', to: 'sites#show'
  resources :sites
end
