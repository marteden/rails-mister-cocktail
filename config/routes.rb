Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails, only: [ :index, :show, :new, :create, :destroy] do
    resources :doses, only: [ :new, :create, :destroy ], shallow: true
  end

end

