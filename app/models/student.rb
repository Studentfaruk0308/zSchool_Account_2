class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :tuitionfee
  has_many :feepayments

	VALID_NAME_REGEX = /[a-z\s.-]/i
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	VALID_MOBILE_REGEX = /\A\d{10}\z/

  validates :student_code, presence: true, uniqueness: true

  validates :student_name, presence: true, format: { with: VALID_NAME_REGEX, message: "should not contain numbers or symbols" }

	validates :student_email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: "invalid"}

  validates :student_homeaddress, presence: true

	validates :student_mobile_number, presence: true, format: { with: VALID_MOBILE_REGEX, message: "invalid"}

  validates :student_parent_name, presence: true, format: { with: VALID_NAME_REGEX, message: "should not contain numbers or symbols" }

  def to_s
    return self.student_name
  end

end
