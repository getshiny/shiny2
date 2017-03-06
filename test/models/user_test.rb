require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  test "user attributes must be unique" do
    user = User.new(phoneNumber: users(:one).phoneNumber)
    assert user.invalid?
    assert_equal ["has already been taken"], user.errors[:phoneNumber]
  end

  test "user attributes must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:phoneNumber].any?
  end


end
