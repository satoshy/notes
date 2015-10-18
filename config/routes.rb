Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :controllers => { registrations: "users/registrations" }
  resources :notes
  root to: 'welcome#index'
end
