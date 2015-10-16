Rails.application.routes.draw do

  resources :notes
  root to: 'welcome#index'
end
