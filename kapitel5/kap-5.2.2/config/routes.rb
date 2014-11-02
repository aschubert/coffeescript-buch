Kap522::Application.routes.draw do
  resources :newsletters
  root :to => 'newsletters#index'
end
