Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :api, defaults: {format: :json}, only: [] do
      resources :apps, only: [:create, :destroy, :show, :index]
  end
end
