Rails.application.routes.draw do

  root 'pirates#index'

  resources :pirates

end
