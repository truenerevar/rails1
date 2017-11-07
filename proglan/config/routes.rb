Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :webs
 
  root 'welcome#index'
end
