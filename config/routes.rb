Rails.application.routes.draw do
  resources :movimentacaos
  resources :local_armazenamentos
  resources :produtos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
