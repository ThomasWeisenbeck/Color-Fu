Rails.application.routes.draw do
  devise_for :users
  resources :users

  namespace :api do
    namespace :v1 do
      resources :palettes do
        resources :reviews
      end
    end
  end

  root 'static_pages#index'
  get "*path", to: "static_pages#index"
end
