Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get "signup", to: "users/registrations#new"
    get "login", to: "users/sessions#new"
    get "update", to: "users/registrations#update"
  end

  root to: "pages#index"

  # チャット用
  get "room/show", to: "rooms#show"
  # root to: 'rooms#show'
  mount ActionCable.server => './cable'
end
