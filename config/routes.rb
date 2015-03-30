Blocitoff::Application.routes.draw do
  get 'users/new'

  devise_for :users
  get 'welcome/index'
  
  get 'welcome/about'
  
  root to: 'welcome#index'
end
