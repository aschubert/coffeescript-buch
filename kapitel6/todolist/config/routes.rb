Todolist2::Application.routes.draw do
	root 'application#index'

	namespace :api, defaults: {format: :json} do
		resources :tasks, only: [:index, :show, :create, :update, :destroy]
	end
end
