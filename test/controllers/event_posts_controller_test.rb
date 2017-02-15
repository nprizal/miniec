require 'test_helper'

class EventPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_posts_index_url
    assert_response :success
  end

  test "should get add" do
    get event_posts_add_url
    assert_response :success
  end

  test "should get edit" do
    get event_posts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get event_posts_delete_url
    assert_response :success
  end

end
