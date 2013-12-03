Rewsly::Application.routes.draw do
	resources :stories, only: [:index, :show, :new, :create]
  root "stories#index"
  get "search", to: "search#index"
end

