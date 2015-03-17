class HighSchool

  attr_reader :dropped_out, :alumni, :students, :vacancies

  def initialize(capacity)
    @capacity = capacity
    @dropped_out = [];
    @students = []
    @alumni = [];
  end

  def vacancies
    @capacity - (@students.count)
  end

  def enroll(student)
    @students << student
  end

  def drop_out(student)
    @dropped_out.push(@students.delete(student))
  end

  def graduate(student)
    @alumni.push(@students.delete(student))
  end

end
