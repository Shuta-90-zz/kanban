require "test_helper"

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_index_url
    assert_response :success
  end

  test "should get new" do
    get list_new_url
    assert_response :success
  end

  test "should get create" do
    get list_create_url
    assert_response :success
  end
end
