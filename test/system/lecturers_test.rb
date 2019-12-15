require "application_system_test_case"

class LecturersTest < ApplicationSystemTestCase
  setup do
    @lecturer = lecturers(:one)
  end

  test "visiting the index" do
    visit lecturers_url
    assert_selector "h1", text: "Lecturers"
  end

  test "creating a Lecturer" do
    visit lecturers_url
    click_on "New Lecturer"

    fill_in "Name", with: @lecturer.name
    click_on "Create Lecturer"

    assert_text "Lecturer was successfully created"
    click_on "Back"
  end

  test "updating a Lecturer" do
    visit lecturers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @lecturer.name
    click_on "Update Lecturer"

    assert_text "Lecturer was successfully updated"
    click_on "Back"
  end

  test "destroying a Lecturer" do
    visit lecturers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lecturer was successfully destroyed"
  end
end
