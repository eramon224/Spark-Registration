require 'test_helper'

class SessionsHelperTest < ActionView::TestCase
  test "test student current user" do
    assert_equal nil, student_current_user
  end
  test "test student logged in" do
    assert_equal false, student_logged_in?
  end
  test "test log in" do
    @user = StudentUser.new(email: "admin@domain.com", password: "password", password_confirmation: "password")
    assert_equal nil, log_in(@user)
  end
  test "test student log in" do
    @user = StudentUser.new(email: "admin@domain.com", password: "password", password_confirmation: "password")
    assert_equal nil, student_log_in(@user)
  end
end