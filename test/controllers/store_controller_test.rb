require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main ul.collections li', minimum: 3
    assert_select 'h2', 'Build Chatbot Interactions'
    assert_select '.price', /\৳[,\d]+\.\d\d/
    
  end

end
