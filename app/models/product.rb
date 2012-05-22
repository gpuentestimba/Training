class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image
  
 # validates :image, :presence => true;
end
