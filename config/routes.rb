Rails.application.routes.draw do

  resources :projects
  resources :projects, only: [:show] do
    resources :scenes, only: [:index, :destroy, :update, :create, :show, :edit] do
      resources :decisions, only: [:create, :update, :destroy]
    end
  end

  devise_for :users
  root to: 'pages#home'

  get 'profile' => "pages#profile", as: "profile"

  get '/projects/:id/owner_workspace', to: 'projects#owner_workspace', as: "project_owner_work"
  get '/projects/:id/elaborate_scenes', to: 'projects#elaborate_scenes', as: "project_elaborate_scenes"
  get '/projects/:id/play', to: 'projects#play', as: "project_play"


  get '/projects/:project_id/scenes/:id/json', to: 'scenes#show_json', as: "project_scene_show_json"

end
