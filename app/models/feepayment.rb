class Feepayment < ApplicationRecord
  belongs_to :student

  def to_s
    return self.feepayment_code
  end


end
