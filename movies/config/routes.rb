Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :movies
 
  root 'welcome#index'
end
