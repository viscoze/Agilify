Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root  'main#index'
  
  match '/projects',     to: "projects#index", via: "GET"
  match 'users/sign_in', to: "main#index",     via: "GET"

  namespace :api do
    match '/projects',          to: "github_projects#projects", via: "GET"
    match '/projects/selected', to: "github_projects#selected_projects", via: "GET"
    match '/projects',          to: "github_projects#create",   via: "POST"
    match '/projects',          to: "github_projects#destroy",  via: "DELETE"
    match '/projects/commits',  to: "github_projects#commits",  via: "GET"
  end
end
