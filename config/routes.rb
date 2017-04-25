Rails.application.routes.draw do
  get 'leaderboard/user_results'

  get 'leaderboard/top_results'

  get 'test/index'

  get 'user/profile'

  get 'user/index'

  devise_for :users
  resources :scores
  # get 'login/index'

  # get 'home/index'

  match ':controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user#profile'
end
