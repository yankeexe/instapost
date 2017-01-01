Rails.application.routes.draw do
  	root 'posts#index'
	devise_for :users, :path_names =>{ :sign_up => 'register'}	
	resources :users, only: :show
 	
 	resources :posts do	
 	resources :comments	
 	resources :upvotes, only: :create
 	resources :downvotes, only: :create
 	end
end

