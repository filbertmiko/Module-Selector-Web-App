class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :urn, uniqueness: true, length: { is: 7}
  validates :email, uniqueness: true, format:  { with: /\b[A-Z0-9._%a-z\-]+@surrey\.ac\.uk\z/ , message: "must be a University of Surrey email"}

  has_many :student_modules, dependent: :destroy
  has_many :course_modules
  validates :name, presence: true
end
