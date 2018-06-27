Rails.application.routes.draw do
  namespace :api do
    resources :sweets
  end
end
