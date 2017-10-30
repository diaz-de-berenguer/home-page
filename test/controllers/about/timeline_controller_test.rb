require 'test_helper'

class About::TimelineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_timeline_index_url
    assert_response :success
  end

end
