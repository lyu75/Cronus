Rails.application.routes.draw do
  resources :projects

  devise_for :users
  root to: 'pages#home'

  get 'profile' => "pages#profile", as: "profile"
end
