Rails.application.routes.draw do
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'posts/create' => 'post#create', as: :post_create
  resources :topics, only: [:index, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
