class StudentModule < ApplicationRecord
  # Validates the course module so that the user cannot add the same course module twice
  validates :course_module, uniqueness: true

  # association between Student Module and Course Module
  # A Student Module belongs to a course module
  belongs_to :course_module

  # Association between Student Module and Student
  # A student module belongs to a student.
  belongs_to :student
end
