require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    
    assert_select "h1", 1
    
    assert_select "a", 5
    
    assert_select "ul" do
      assert_select "li", 2
    end
    
    assert_select "p", 3
    
    assert_select "#text", /MyText/
    
    assert_select "#price", /\$[,\d]+\.(\d|\d\d)/
    
    
  end

end
