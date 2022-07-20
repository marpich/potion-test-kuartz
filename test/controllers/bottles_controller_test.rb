require "test_helper"

class BottlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bottles_new_url
    assert_response :success
  end

  test "should get create" do
    get bottles_create_url
    assert_response :success
  end

  test "should get show" do
    get bottles_show_url
    assert_response :success
  end

  test "should get index" do
    get bottles_index_url
    assert_response :success
  end
end
