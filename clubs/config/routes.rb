Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :clubs
 
  root 'welcome#index'
end
