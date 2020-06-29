Rails.application.routes.draw do

root 'users#index'
get 'show' => 'users#show'
get 'about' => 'pages#about'
get 'edit' =>'users#edit'
get 'delete' => 'users#delete'

	resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
