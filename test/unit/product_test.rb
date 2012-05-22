require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save product without name" do
    product = Product.new(:price => 1.5, :description => "DescriptionTest", :image => "ImageTest")
    assert !product.save, "Saved the product without a name"
  end
  
  test "should not save product without description" do
      product = Product.new(:name => "Produt1", :price => 1.5, :image => "ImageTest")
      assert !product.save, "Saved the product without a description"
  end
  
  test "should not save product without image" do
      product = Product.new(:name => "Produt1", :price => 1.5, :description => "DescriptionTest")
      assert !product.save, "Saved the product without a image"
  end
  
  test "should not save product without price greater than 0" do
      product = Product.new(:name => "Produt1", :price => -1.5, :description => "DescriptionTest", :image => "ImageTest")
      assert !product.save, "Saved the product without price grater than 0"
  end
  
  test "should not save product with same name of another product" do
      product = Product.new(:name => "MyString")
      assert !product.save, "Saved the product with same name of another product"
  end
  
end
