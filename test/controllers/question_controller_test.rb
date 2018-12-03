require 'test_helper'

class QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get loading" do
    get question_loading_url
    assert_response :success
  end

  test "should get question_type1" do
    get question_question_type1_url
    assert_response :success
  end

  test "should get question_type2" do
    get question_question_type2_url
    assert_response :success
  end

  test "should get question_type3" do
    get question_question_type3_url
    assert_response :success
  end

end
