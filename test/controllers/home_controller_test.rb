require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get link" do
    get home_link_url
    assert_response :success
  end

  test "should get choose" do
    get home_choose_url
    assert_response :success
  end

end
