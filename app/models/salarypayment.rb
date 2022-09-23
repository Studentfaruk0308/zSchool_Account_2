class Salarypayment < ApplicationRecord
  belongs_to :teacher

  def to_s
    return self.salarypayment_code
  end

end
