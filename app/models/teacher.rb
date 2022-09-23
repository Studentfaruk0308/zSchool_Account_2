class Teacher < ApplicationRecord
  belongs_to :salary
  has_many :classrooms
  has_many :students, through: :classrooms

  def to_s
    return self.teacher_name
  end

end
