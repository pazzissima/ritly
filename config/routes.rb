RitlyApp::Application.routes.draw do

  # same as get "/", to: "urls#index" 
  root to: "urls#index"

  #get "/urls", to: "urls#index"
  
  get "/urls/new", to: "urls#new"

  get "/go/:random_string", to: "urls#show"

  get "/go/:random_string/preview", to: "urls#preview"

  get "urls", to: "urls#new"
  
  post "urls", to: "urls#create"

end
