Rails.application.routes.draw do
  resources :pdfs
  resources :imagepieces
  resources :imageboards
  resources :attachments
  resources :boardgames
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
