require "test_helper"

class CaloriesRegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calories_registers_new_url
    assert_response :success
  end

  test "should get edit" do
    get calories_registers_edit_url
    assert_response :success
  end
end
