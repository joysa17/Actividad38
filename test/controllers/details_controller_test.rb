require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get details_create_url
    assert_response :success
  end

end
