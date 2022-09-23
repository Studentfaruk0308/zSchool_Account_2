class Classroom < ApplicationRecord
  belongs_to :teacher
  has_many :students

  def to_s
    return self.classroom_name
  end
end
