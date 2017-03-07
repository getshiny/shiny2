require 'test_helper'
require 'helpers/auth_helper'


class AuthControllerTest < ActionDispatch::IntegrationTest
  include AuthHelper

  setup do
    @new = { phoneNumber: "7111111111" }
    @existing = { phoneNumber: users(:one).phoneNumber }
  end

  # test "New user authentication" do
  #   assert_difference('User.count') do
  #     request_code @new
  #   end
  # end

  test "Login form view" do
    login_form
  end

  test "Existing user authentication" do
    request_code @existing
  end
  #
  # test "request token" do
  #   # post auth_token_url with a phone number and a code
  #   # assert_response :success
  #   # assert_response has a jwt token
  # end
end
