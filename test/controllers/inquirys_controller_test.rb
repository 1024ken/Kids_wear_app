require 'test_helper'

class InquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get inquirys_name:string_url
    assert_response :success
  end

  test "should get mail:string" do
    get inquirys_mail:string_url
    assert_response :success
  end

  test "should get content:string" do
    get inquirys_content:string_url
    assert_response :success
  end

end
