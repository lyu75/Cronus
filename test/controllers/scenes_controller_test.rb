require 'test_helper'

class ScenesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scenes_new_url
    assert_response :success
  end

  test "should get create" do
    get scenes_create_url
    assert_response :success
  end

  test "should get edit" do
    get scenes_edit_url
    assert_response :success
  end

  test "should get update" do
    get scenes_update_url
    assert_response :success
  end

  test "should get index" do
    get scenes_index_url
    assert_response :success
  end

  test "should get show" do
    get scenes_show_url
    assert_response :success
  end

  test "should get delete" do
    get scenes_delete_url
    assert_response :success
  end

end
