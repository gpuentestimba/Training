class LineItem < ActiveRecord::Base
  attr_accessible :price, :quantity
  belongs_to :cart
  belongs_to :product
end
