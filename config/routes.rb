Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

  devise_for :users, controllers: { confirmations: 'confirmations' }
end
