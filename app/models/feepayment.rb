class Feepayment < ApplicationRecord
  belongs_to :student

  def to_s
    return self.feepayment_code
  end

  def name_of_student
    self.student.student_name
  end

end
