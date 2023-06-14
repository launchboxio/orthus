Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    devise_for :admins, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout" }
    resources :entities
    resources :deployments
    resources :credentials
    resources :providers
    resources :webhooks
  end

  namespace :api, defaults: {format: :json} do
    # This one is routed on the base API domain
    resources :entities

    # The following resources all expect to be
    # served under a tenant specific subdomain
    resources :deployments
    resources :credentials
    resources :entities
    resources :providers
    resources :webhooks
  end

  resources :deployments
  resources :credentials
  resources :providers
  resources :webhooks
end
