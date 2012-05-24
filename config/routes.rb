Training::Application.routes.draw do
  

  get "store/index"

  root :to => "store#index"
  
  resources :products
  
end
