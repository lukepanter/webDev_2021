require "test_helper"

class Ex3ControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get ex3_post_url
    assert_response :success
  end
end
