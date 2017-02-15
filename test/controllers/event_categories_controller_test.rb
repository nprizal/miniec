require 'test_helper'

class EventCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_categories_index_url
    assert_response :success
  end

  test "should get add" do
    get event_categories_add_url
    assert_response :success
  end

  test "should get edit" do
    get event_categories_edit_url
    assert_response :success
  end

end
