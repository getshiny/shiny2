require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest

  test "request code" do
    # post auth_code_url with a phone number
    # assert_response :success
    # assert response has a the phone number
  end

  test "request token" do
    # post auth_token_url with a phone number and a code
    # assert_response :success
    # assert_response has a jwt token
  end
end
