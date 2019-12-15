class StudentModule < ApplicationRecord
  validates :course_module, uniqueness: true 
  belongs_to :course_module
  belongs_to :student
end
