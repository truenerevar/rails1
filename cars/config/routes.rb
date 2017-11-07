Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :cars
 
  root 'welcome#index'
end
