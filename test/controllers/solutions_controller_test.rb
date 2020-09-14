require 'test_helper'

class SolutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solutions_index_url
    assert_response :success
  end

  test "should get show" do
    get solutions_show_url
    assert_response :success
  end

  test "should get new" do
    get solutions_new_url
    assert_response :success
  end

  test "should get create" do
    get solutions_create_url
    assert_response :success
  end

end
