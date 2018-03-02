require 'test_helper'

class About::ResumesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get about_resumes_show_url
    assert_response :success
  end

  test "should get edit" do
    get about_resumes_edit_url
    assert_response :success
  end

end
