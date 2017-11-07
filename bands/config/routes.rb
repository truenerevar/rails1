Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :bands
 
  root 'welcome#index'
end
