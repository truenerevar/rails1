Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :systems
 
  root 'welcome#index'
end
