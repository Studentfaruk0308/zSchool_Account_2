class Salarypayment < ApplicationRecord
  belongs_to :teacher

  def to_s
    return self.salarypayment_code
  end

  def name_of_teacher
    self.teacher.teacher_name
  end

end
