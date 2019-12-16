require 'test_helper'

class StudentModuleTest < ActiveSupport::TestCase

  test "should not save student module without student" do
    course_module = CourseModule.new(name: "Web Applications Dev", code:  "COM2025", credits: 15, semester: 1, lecturer_id: 1)
    student_module = StudentModule.new
    student_module.course_module = course_module
    assert_not student_module.save, "Saved the student module without student"
  end

  test "should not save student module without course module" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    student_module = StudentModule.new
    student_module.student = student
    assert_not student_module.save, "Saved the student module without course module"
  end

  test "should save student module with course module and student" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    course_module = CourseModule.new(name: "Web Applications Dev", code:  "COM2025", credits: 15, semester: 1, lecturer_id: 1)
    student_module = StudentModule.new
    student_module.student = student
    student_module.course_module = course_module
    assert student_module.save, "Saved the student module without course module"
  end

  test "should destroy student module" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    course_module = CourseModule.new(name: "Web Applications Dev", code:  "COM2025", credits: 15, semester: 1, lecturer_id: 1)
    student_module = StudentModule.new
    student_module.student = student
    student_module.course_module = course_module
    student_module.destroy
    assert_equal StudentModule.all.count, 2, "Didn't delete any student module"
  end

  test "should not let a student add the same module" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    course_module = CourseModule.new
    course_module.name = "Web Applications Dev"
    course_module.code = "COM2025"
    course_module.credits = 15
    course_module.semester = 1
    course_module.lecturer_id = 1
    student_course_module_1 = StudentModule.create(course_module: course_module, student: student)
    student_course_module_2 = StudentModule.new(course_module: course_module, student: student)
    assert_not student_course_module_2.save, "User saved the same module"
  end

end
