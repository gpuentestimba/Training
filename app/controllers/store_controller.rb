class StoreController < ApplicationController
  def index
    @products = Product.find(:all, :order => "price DESC")
    @c = Cart.first
    if(@c != nil)
        @id = @c[:id]
    else
        @c = Cart.new()
        @c.save
        @id = @c[:id]
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  
end
