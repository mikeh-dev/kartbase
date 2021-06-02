Rails.application.routes.draw do
  resources :entries
  root 'welcome#index'
end
