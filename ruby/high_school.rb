class HighSchool

  def initialize(capacity)
    @capacity = capacity
    @students = []
  end

  def vacancies
    @capacity - (@students.count)
  end

  def enroll(student)
    @students << student
  end

  def students
    @students
  end

end
