Training::Application.routes.draw do
  

  root :to => "home#index"
  
  resources :products
  
end
