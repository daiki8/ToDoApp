require 'test_helper'

class TaskActivationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get task_activations_edit_url
    assert_response :success
  end

end
