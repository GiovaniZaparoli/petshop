require 'test_helper'

class ScheduleControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get schedule_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get schedule_controller_create_url
    assert_response :success
  end

end
