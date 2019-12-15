class StudentModule < ApplicationRecord
  belongs_to :module
  belongs_to :student
end
