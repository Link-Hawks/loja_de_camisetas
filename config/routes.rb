Rails.application.routes.draw do
  root "produtos#index" 
  resources :produtos
  get "produtos/:id/destroy" => "produtos#destroy"
end
