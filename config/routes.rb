Rails.application.routes.draw do
  root 'api/sweets#index'
  namespace :api do
    resources :sweets
  end
end
