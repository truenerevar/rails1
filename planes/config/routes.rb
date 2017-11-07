Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :planes
 
  root 'welcome#index'
end
