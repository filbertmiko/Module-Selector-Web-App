class CourseModule < ApplicationRecord

  # Each course belongs to a lecturer as it cannot have more than one lecturer
  belongs_to :lecturer
end
