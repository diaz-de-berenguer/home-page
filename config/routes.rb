Rails.application.routes.draw do

	root 'home#index'

  namespace :blog do
    resources :posts, path: '/'
  end

  namespace :about do
    get '/' => 'about#index'
    resources :timeline
  end

  namespace :api, defaults: { format: :json } do
  	resources :lorem_ipsum
  end

  namespace :tools do
  	resources :lorem_ipsum
  end

end
