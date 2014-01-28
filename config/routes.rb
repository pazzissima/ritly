RitlyApp::Application.routes.draw do



  root to: "urls#index"

 
  get "/urls/new", to: "urls#new"

  get "/go/:random_string", to: "urls#show"

  get "/go/:random_string/preview", to: "urls#preview"

  get "urls", to: "urls#new"

  post "urls", to: "urls#create"



  resources :urls, :users, :sessions
  get '/signup' => 'users#new'
  delete '/signout', to: 'sessions#destroy'
  get'/signin', to: 'sessions#new', as: 'sign_in'

end
