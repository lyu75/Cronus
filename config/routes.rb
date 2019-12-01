Rails.application.routes.draw do

  resources :projects
  resources :projects, only: [:show] do
    resources :scenes
  end

  devise_for :users
  root to: 'pages#home'

  get 'profile' => "pages#profile", as: "profile"

  get '/projects/:id/owner_workspace', to: 'projects#owner_workspace', as: "project_owner_work"

end
