Rails.application.routes.draw do
  root 'users#new'
  get 'users/graphical_user_data'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
