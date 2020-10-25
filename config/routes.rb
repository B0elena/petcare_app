Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'  #トップページはあとで変える
  resources :pets do
    resources :managements, only: :create
  end
end
