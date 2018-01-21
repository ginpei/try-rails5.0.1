require 'test_helper'

class MiscControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get misc_home_url
    assert_response :success
  end

end
