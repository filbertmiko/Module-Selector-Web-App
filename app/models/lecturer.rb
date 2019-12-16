class Lecturer < ApplicationRecord
  # A lecturer may have more than one module to teach
  # This is the association used between Lecturer and CourseModule
  has_many :course_modules
end
