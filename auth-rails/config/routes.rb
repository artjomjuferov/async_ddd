Rails.application.routes.draw do
  resources :accounts do
    collection do
      get :current, on: :collection
    end
  end

  use_doorkeeper
  devise_for :accounts

  root to: "application#home"
end
