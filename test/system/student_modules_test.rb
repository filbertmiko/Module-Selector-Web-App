require "application_system_test_case"

class StudentModulesTest < ApplicationSystemTestCase
  setup do
    @student_module = student_modules(:one)
  end

  test "visiting the index" do
    visit student_modules_url
    assert_selector "h1", text: "Student Modules"
  end

  test "creating a Student module" do
    visit student_modules_url
    click_on "New Student Module"

    fill_in "Module", with: @student_module.module_id
    fill_in "Student", with: @student_module.student_id
    click_on "Create Student module"

    assert_text "Student module was successfully created"
    click_on "Back"
  end

  test "updating a Student module" do
    visit student_modules_url
    click_on "Edit", match: :first

    fill_in "Module", with: @student_module.module_id
    fill_in "Student", with: @student_module.student_id
    click_on "Update Student module"

    assert_text "Student module was successfully updated"
    click_on "Back"
  end

  test "destroying a Student module" do
    visit student_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student module was successfully destroyed"
  end
end
