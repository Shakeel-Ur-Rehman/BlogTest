Rails.application.routes.draw do

	get 'user/articles' ,to: 'articles#myarticles'
  devise_for :users, :controllers=>{registrations:"users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
  	resources :comments
  end

  root 'articles#index'
  
end
