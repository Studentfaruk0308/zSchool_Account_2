# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_22_235756) do

  create_table "classrooms", force: :cascade do |t|
    t.string "classroom_code"
    t.string "classroom_name"
    t.string "classroom_gender"
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "feepayments", force: :cascade do |t|
    t.string "feepayment_code"
    t.datetime "date_of_payment"
    t.integer "amount_of_payment"
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_feepayments_on_student_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.string "salary_code"
    t.integer "fortnightly_salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "salarypayments", force: :cascade do |t|
    t.string "salarypayment_code"
    t.datetime "date_of_payment"
    t.integer "amount_of_payment"
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_salarypayments_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.datetime "student_date_of_birth"
    t.string "student_email"
    t.string "student_homeaddress"
    t.string "student_mobile_number"
    t.string "student_gender"
    t.string "student_parent_name"
    t.datetime "enrolled_date"
    t.integer "classroom_id", null: false
    t.integer "tuitionfee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["tuitionfee_id"], name: "index_students_on_tuitionfee_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_code"
    t.string "teacher_name"
    t.string "teacher_email"
    t.string "teacher_homeaddress"
    t.string "teacher_mobile_number"
    t.string "teacher_gender"
    t.datetime "engagement_date"
    t.string "teacher_bankdetails"
    t.integer "salary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salary_id"], name: "index_teachers_on_salary_id"
  end

  create_table "tuitionfees", force: :cascade do |t|
    t.string "tuitionfee_code"
    t.integer "term_1_fee"
    t.integer "term_2_fee"
    t.integer "term_3_fee"
    t.integer "term_4_fee"
    t.integer "full_year_fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "classrooms", "teachers"
  add_foreign_key "feepayments", "students"
  add_foreign_key "salarypayments", "teachers"
  add_foreign_key "students", "classrooms"
  add_foreign_key "students", "tuitionfees"
  add_foreign_key "teachers", "salaries"
end
