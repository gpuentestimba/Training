Training::Application.routes.draw do
  

  get "store/index"
  match "carts/:id" => "carts#current_cart"
  match "carts/destroy/:id" => "carts#destroy"
  post "carts/:idCart" => "carts#destroy"
  match ':controller/:action/:id/with_LineItem/:lineItem_id' => "carts#current_cart"
  
  root :to => "store#index"
  
  resources :products
  
  resources :carts do
    resources :lineItems
  end
  
end
