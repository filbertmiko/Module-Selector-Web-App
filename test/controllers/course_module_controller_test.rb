require 'test_helper'

class CourseModuleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_module = course_modules(:one)
  end

  test "should get index" do
    get course_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_course_module_url
    assert_response :success
  end

  test "should show course module" do
    get course_module_url(@course_module)
    assert_response :success
  end

end
