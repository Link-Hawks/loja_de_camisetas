Rails.application.routes.draw do
  root "produtos#index" 
  resources :produtos
  delete "produtos/:id" => "produtos#destroy"
end
