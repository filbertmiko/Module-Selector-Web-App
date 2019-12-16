require 'test_helper'

class LecturerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get id" do
    lecturer = Lecturer.new(name: "hello")
    assert lecturer_id = 1
  end

end
