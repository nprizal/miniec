require 'test_helper'

class EventConfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_configs_index_url
    assert_response :success
  end

  test "should get edit" do
    get event_configs_edit_url
    assert_response :success
  end

end
