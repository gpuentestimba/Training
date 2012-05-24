class StoreController < ApplicationController
  def index
    @products = Product.find(:all, :order => "price DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  
  def current_cart
    (session[:names] ||= []) << params[:name]
    
    @s = []
    session[:names].each do |n|
        @s.push(n)
    end
   
    
    respond_to do |format|
      format.html 
      format.json { render json: @s}
    end
    
  end
  
end
