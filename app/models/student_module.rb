class StudentModule < ApplicationRecord
  belongs_to :course_module
  belongs_to :student
end
