require 'test_helper'
class CartTest < ActiveSupport::TestCase
    
  fixtures :all

  
  test "should delete all the item" do
    cart = Cart.first()
    
    cartItemSize = cart.lineItems.size
    itemSize = LineItem.find(:all).size
    
    assert_equal(cartItemSize, itemSize)
    assert Cart.destroy(cart.id)
    assert_equal(LineItem.find(:all).size, 0)
  end
  
end
