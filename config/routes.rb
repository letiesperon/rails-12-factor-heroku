Rails.application.routes.draw do
  get '/' => 'example#home'

  resources :orders, only: [:create, :show]
end
