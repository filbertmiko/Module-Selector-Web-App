class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Validates the urn so that it cannot be saved more than once. To check whether it is unique
  validates :urn, uniqueness: true, length: { is: 7}
  # validates the email so that it cannot be saved more than once. To check whether it is unique.
  # As well as validating the email's format to make sure that it is a @surrey.ac.uk email
  validates :email, uniqueness: true, format:  { with: /\b[A-Z0-9._%a-z\-]+@surrey\.ac\.uk\z/ , message: "must be a University of Surrey email"}

  #Association between Student and student modules. A student may take multiple modules, but not the same ones.
  has_many :student_modules, dependent: :destroy
  # Association between Student and course modules as they can have more than one module, but not the same ones.
  has_many :course_modules

  # validates the name to check that it is presence
  validates :name, presence: true
end
