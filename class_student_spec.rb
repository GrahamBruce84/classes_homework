require ('minitest/autorun')
require ('minitest/rg')
require_relative ('class_student')

class TestClassStudent <Minitest::Test

  def setup()
    @student = ClassStudent.new("Graham", 2)
  end

  def test_student_name
    assert_equal("Graham", @student.get_student_name())
  end

  def test_cohort_numer
    assert_equal(2, @student.get_cohort_number())
  end

  def test_set_student_name
    @student.set_student_name("Tasha")
    assert_equal("Tasha", @student.get_student_name())
  end

  def test_can_student_talk
    assert_equal("I can talk!", @student.student_can_talk())
  end

  def test_favourite_programming_language
    favourite_language = "Ruby"
    assert_equal("I love Ruby!", @student.favourite_programming_language(favourite_language))
  end
end