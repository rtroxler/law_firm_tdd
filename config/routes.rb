Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  root "firms#dashboard"
  get 'about_us', to: "firms#about_us", as: :about_us
  resources :firms

  get 'attorneys_list', to: 'firms#attorneys_list', as: :attorneys_list
end
