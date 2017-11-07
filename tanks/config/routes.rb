Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :tanks
 
  root 'welcome#index'
end
