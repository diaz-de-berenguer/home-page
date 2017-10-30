require 'test_helper'

class About::AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_about_index_url
    assert_response :success
  end

end
