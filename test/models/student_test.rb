require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save student without email" do
    student = Student.new(encrypted_password: "123456", name: "test", urn: "1234567")
    assert_not student.save
  end

  test "should not save student without urn" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk")
    assert_not student.save
  end

  test "should not save student without name" do
    student = Student.new(encrypted_password: "123456", email: "test@surrey.ac.uk", urn: "1234567")
    assert_not student.save
  end

  test "should not save student without password" do
    student = Student.new(email: "test@surrey.ac.uk", name: "test", urn: "1234567")
    assert_not student.save
  end

  test "should not save student without surrey email" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@gmail.com", urn: "1234567")
    assert_not student.save
  end

  test "should not save student if urn already exists" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    student.save

    student2 = Student.new(encrypted_password: "123456", name: "test2", email: "test@surrey.ac.uk", urn: "1234567")
    assert_not student2.save
  end


  test "should not allow duplicate emails" do
    student = Student.new(encrypted_password: "123456", name: "test", email: "test@surrey.ac.uk", urn: "1234567")
    student2 = Student.new(encrypted_password: "123456", name: "test2", email: "test@surrey.ac.uk", urn: "1284567")
    student.save
    assert_not student2.save, "Saved a duplicate user email"
  end
end
