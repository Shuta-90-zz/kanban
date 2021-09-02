Rails.application.routes.draw do
  root 'top#index'
  get '/' => 'top#index'
  get 'list/new' => 'list#new'
  post 'list/create' => 'list#create'
  devise_for :users
end
