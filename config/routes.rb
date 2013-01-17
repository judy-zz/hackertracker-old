HackerTracker::Application.routes.draw do
  devise_for :users, :skip => :all

  post "/users/sign_in"    => "sessions#create"
  delete "/users/sign_out" => "sessions#destroy"

  root :to => 'application#index'
end
