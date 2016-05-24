Rails.application.routes.draw do
  resource :jobs
  devise_for :users


  root 'jobs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
