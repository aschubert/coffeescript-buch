Kap523::Application.routes.draw do
  get "autocomplete/index"
  get "autocomplete/search"
  root :to => 'autocomplete#index'
end
