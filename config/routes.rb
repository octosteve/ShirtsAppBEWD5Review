ReviewShirtsApp::Application.routes.draw do
  get "/search", to: 'search#index'
  root "shirts#index"
  resources :shirts
end
