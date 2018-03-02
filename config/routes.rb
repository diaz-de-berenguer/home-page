Rails.application.routes.draw do

	# root 'home#index'
  root 'home#pending'

  namespace :blog do
    resources :posts, path: '/'
  end

  namespace :about do
    get '/' => 'about#index'
    resources :timeline
  end

  namespace :about, path: '/' do
    resource :resume, only: [:show, :edit, :update]
  end

  namespace :project do
    get '/' => 'projects#index'
  end

  namespace :api, defaults: { format: :json } do
  	resources :lorem_ipsum
  end

  namespace :tools do
  	resources :lorem_ipsum
  end

end
