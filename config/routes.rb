Rails.application.routes.draw do

  root 'staticpages#top'
  get '/posts', to: 'posts#index'
  resources :actors, only: %i[index show] do
    resources :posts, only: %i[create], shallow: true do
      resources :likes, only: %i[create]
    end
  end
  # post 'like', to: 'likes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end