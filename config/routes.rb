Rails.application.routes.draw do
  	root 'posts#index'
	devise_for :users, :path_names =>{ :sign_up => 'register'}	
 	resources :posts do	
 	resources :comments	
 end
end

