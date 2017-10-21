require 'test_helper'

class Blog::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_posts_index_url
    assert_response :success
  end

end
