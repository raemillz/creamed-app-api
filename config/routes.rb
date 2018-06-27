Rails.application.routes.draw do
  namespace :api do
        resources :sweets, except: [:new, :edit]
    end
end
