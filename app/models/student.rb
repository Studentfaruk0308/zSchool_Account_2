class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :tuitionfee
  has_many :feepayments

  def to_s
    return self.student_name
  end

end
