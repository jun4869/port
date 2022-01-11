Rails.application.routes.draw do
  root to: 'boards#index'
  resources :boards, only: %i[index new create show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
