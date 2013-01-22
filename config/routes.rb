HackerTracker::Application.routes.draw do
  devise_for :users
  match "/sekrit" => "application#sekrit"

  root :to => 'application#index'
end
