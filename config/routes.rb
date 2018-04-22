Rails.application.routes.draw do
  namespace :admin do
      resources :locations
      resources :states
      resources :timetables
      resources :zones

      root to: "locations#index"
    end
  resources :timetables
  resources :locations
  resources :zones, path: "(/year/:year)(/month/:month)/zones"
  resources :states
  get 'state/name'

  get 'state/country_id'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "takwim" do
    resources :locations, path: "(/year/:year)(/month/:month)/locations"
  end

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
