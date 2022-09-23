class Salary < ApplicationRecord
    has_many :teachers

    def to_s
        return self.salary_code
    end

end
