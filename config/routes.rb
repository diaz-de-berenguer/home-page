Rails.application.routes.draw do

	root 'home#index'

  namespace :blog do
    resources :posts, path: '/'
  end

end
