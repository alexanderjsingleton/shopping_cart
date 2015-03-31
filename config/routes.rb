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

#notes from previous checkpoint

# Bloccit::Application.routes.draw do
#   get "comments/create"
#   # The generator also built out get routes in the routes.rb file. Make sure to delete those, because our resources :topics declaration takes care of that.
#   # get "topics/index"
#   # get "topics/new"
#   # get "topics/show"
#   # get "topics/edit"
#   devise_for :users
#    # resources :users, only: [:show]
#    resources :users, only: [:show, :update, :index]

#   # get "posts/index"
#   # get "posts/show"
#   # get "posts/new"
#   # get "posts/edit"
#   # resources :posts
#   # To have topics/new route to the right action, we need to add the route to our routes.rb file
#     # resources :topics

#   #  resources :topics do
#   #   resources :posts, except: [:index] do
#   #     resources :comments, only: [:create, :destroy]
#   #   end

#   #    post '/up-vote' => 'votes#up_vote', as: :up_vote
#   #    post '/down-vote' => 'votes#down_vote', as: :down_vote
#   # end