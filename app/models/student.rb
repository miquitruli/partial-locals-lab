
class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(query)
    if query == ''
      @students = Student.all
    else
      @students = Student.where("name like ?", "%#{query}%")
    end
  end
end
