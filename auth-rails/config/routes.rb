Rails.application.routes.draw do
  resources :accounts do
    get :current, on: :collection
  end

  use_doorkeeper
  devise_for :accounts

  root to: "application#home"
end
