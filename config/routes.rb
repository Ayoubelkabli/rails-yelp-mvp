Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:new]
  end
end
