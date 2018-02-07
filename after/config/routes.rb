Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "galleries#index"

  resources :galleries, except: [:edit, :update] do
    resources :artists, except: [:index, :show]
  end
end
