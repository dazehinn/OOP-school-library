require './person'

class Student < Person
  def initialize(age, name, parent_permission, classroom: nil)
    super(age, name, parent_permission)
    @classroom = classroom
    assign_student_to_classroom if classroom
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end

  def assign_student_to_classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end
end
