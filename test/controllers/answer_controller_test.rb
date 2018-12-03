require 'test_helper'

class AnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get output_m" do
    get answer_output_m_url
    assert_response :success
  end

  test "should get output_w" do
    get answer_output_w_url
    assert_response :success
  end

  test "should get output_r" do
    get answer_output_r_url
    assert_response :success
  end

end
