Kap521::Application.routes.draw do
  get "order/index"
  get "order/update_states"

  root :to => 'order#index'
end
