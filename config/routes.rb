Rails.application.routes.draw do

  root 'staticpages#top'
  resources :actors, onli: %i[index show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
