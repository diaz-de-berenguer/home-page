require 'test_helper'

class Project::ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_projects_index_url
    assert_response :success
  end

end
