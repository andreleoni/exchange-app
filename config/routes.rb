Rails.application.routes.draw do
  post 'exchange', to: 'home#exchange'

  root 'home#index'
end
