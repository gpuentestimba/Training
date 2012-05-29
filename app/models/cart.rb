class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :lineItems, :dependent => :destroy
  
  def add_product(idProduct)
    @item =  self.lineItems.where(:product_id => idProduct)
    if (@item.size == 0)
        @item = LineItem.new()
        @item.add_item(self.id, idProduct)
        @item.save
        self.lineItems.push(@item);
    else
        @item[0].oneMore()
        @item[0].save 
    end
  end
  
  
end
