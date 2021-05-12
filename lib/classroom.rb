class Classroom
  attr_reader :subject,
              :capacity,
              :students

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def yell_at_students
    @students.map(&:upcase)
  end

  def over_capacity?
    @students.size > @capacity
  end

  def kick_out
    @students.shift
  end

end
