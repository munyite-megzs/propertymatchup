Rails.application.routes.draw do
  get 'welcome/index'

	resources :appartments

	root 'welcome#index'
  
end
