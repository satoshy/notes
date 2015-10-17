Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: "users/registrations" }
  resources :notes
  root to: 'welcome#index'
end
