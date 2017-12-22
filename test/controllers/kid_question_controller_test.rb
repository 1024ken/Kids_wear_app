require 'test_helper'

class KidQuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kid_question_new_url
    assert_response :success
  end

end
