FastCV::Application.routes.draw do
  devise_for :users
  resources :home

  root :to => "home#index"
  
end
