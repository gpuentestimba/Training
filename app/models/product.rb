class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image
  
  validates :image, :description, :name, :presence => true
  validates_uniqueness_of :name
  validates_numericality_of :price, :greater_than => 0
 
  has_many :lineItems
  
  validate :valid_url
  def valid_url
     if !( self.image =~ /^(http:\/\/).*(.gif|.PNG|.JPG)$/ )
      endself.image = "default"
     end
  end
 
end
