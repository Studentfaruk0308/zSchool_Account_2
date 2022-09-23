class Tuitionfee < ApplicationRecord
    has_many :students


    def to_s
        return self.tuitionfee_code
    end
end
