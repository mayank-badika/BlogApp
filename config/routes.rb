Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index" # rooting the first page to
  resources :articles do # creating heirarchy with articles to generate routes accordingly
  resources :comments
  end
end
