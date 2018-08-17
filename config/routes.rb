Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  # get 'cocktails/index', to: "cocktails#index"
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/edit'
  # get 'cocktails/update'
  # get 'cocktails/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cocktails#index"
    resources :cocktails do
      resources :doses, only: [ :new, :create ]
    end
    resources :doses, only: [ :destroy]
end
