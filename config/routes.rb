Rails.application.routes.draw do
  namespace :admin do
    resources :states
    resources :timetables, path: "takwim" 
    resources :zones
    resources :timetables
    root to: "states#index"
  end

  resources :states, path: "negeri"
  resources :locations, path: "lokasi" 
  resources :zones, path: "(/year/:year)(/month/:month)/zon"
  resources :timetables, path: "takwim" 

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
