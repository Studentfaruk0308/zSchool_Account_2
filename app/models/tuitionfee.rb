class Tuitionfee < ApplicationRecord
    has_many :students

    validates :tuitionfee_code, presence: true

    validates :term_1_fee, presence: true
    validates :term_2_fee, presence: true
    validates :term_3_fee, presence: true
    validates :term_4_fee, presence: true
    validates :full_year_fee, presence: true

    def to_s
        return self.tuitionfee_code
    end
end
