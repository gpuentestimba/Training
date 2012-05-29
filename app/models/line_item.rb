class LineItem < ActiveRecord::Base
  attr_accessible :price, :quantity, :cart_id, :product_id
  belongs_to :cart 
  belongs_to :product 
  

  def add_item (idCart, idProduct) #IS a HASH {price,product id, cart id, quantity}
    self.cart_id = idCart
    self.product_id = idProduct
    self.quantity = 1
    self.price = Product.find(idProduct).price
  end
  
  def oneMore()
    self.quantity = self.quantity + 1
    self.price = self.price + self.product.price
  end
  
end
