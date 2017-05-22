class ClassStudent

  def initialize(student_name, cohort_number)

    @student_name = student_name
    @cohort_number = cohort_number


  end

  def get_student_name()
    return @student_name
  end

  def get_cohort_number()
    return @cohort_number
  end

  def set_student_name(name)
    @student_name = name
  end

  def student_can_talk()
   return "I can talk!"
 end

 def favourite_programming_language(favourite_language)
  return "I love #{favourite_language}!"
end



end


