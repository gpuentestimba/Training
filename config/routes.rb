Training::Application.routes.draw do
  

  get "store/index"
  post "store/:name" => "store#current_cart"
  
  root :to => "store#index"
  
  resources :products
  
end
