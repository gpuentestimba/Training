class CartsController < ApplicationController
  
  
  def current_cart
    @c  = Cart.first
    if(@c[:id].to_i == params[:id].to_i)
          @c.save
          if(params[:lineItem_id] != nil)  
            @c.add_product(params[:lineItem_id])
          end
          @i = @c.lineItems
          @total = 0
          
          @i.each do |o|
            @total = @total + o.price          
        end
     else
        @i = nil  
     end

    
     respond_to do |format|
        format.html 
        format.json { render json: @c}
      end
    
  end
  
  def list
     @c = Cart.find(params[:id])
      
      respond_to do |format|
      format.html 
      format.json { render json: @c}
    end
  end
    
  def destroy
    Cart.destroy(params[:id])
    @c = Cart.new
    @c.save
    redirect_to  :action => "current_cart"
  end
end