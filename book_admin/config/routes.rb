Rails.application.routes.draw do
  get 'profile/show'

  get 'profile/edit'

  get 'profile/update'

  get "/books/:id" => "books#show"

  resources :publishers

  resource :profile

end
