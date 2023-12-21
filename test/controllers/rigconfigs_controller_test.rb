require "test_helper"

class RigconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rigconfigs_index_url
    assert_response :success
  end

  test "should get new" do
    get rigconfigs_new_url
    assert_response :success
  end

  test "should get edit" do
    get rigconfigs_edit_url
    assert_response :success
  end
end
