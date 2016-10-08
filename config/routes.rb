Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root  'main#index'

  namespace :api do
    match '/projects', to: "github_projects#index", via: "GET"
  end
end
