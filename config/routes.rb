Blocitoff::Application.routes.draw do
 devise_for :users
  resources :users, only: [:update, :show]

  authenticated :user do
    root to: "users#show", as: :authenticated_root, via: :get
  end

  unauthenticated do
    root 'welcome#index'
  end
end