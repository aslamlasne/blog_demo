require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
  end

  test "should get profile" do
    get user_profile_url(users(:one).id)
    assert_response :success
  end
end
