Rails.application.routes.draw do
  get 'project/new'
  get 'project/create'
  get 'project/update'
  get 'project/edit'
  get 'project/delete'
  get 'project/index'
  get 'project/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
