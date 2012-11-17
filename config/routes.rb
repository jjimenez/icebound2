Icebound2::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/signout/done' => 'home#auth_failure', :as => :signout_done
  match '/auth/failure' => 'sessions#failure'
end
