Rails.application.routes.draw do
  root to: 'boards#index'
  resources :boards, only: %i[index new create show] do
    resources :posts, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
