class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :student_name
      t.string :course_name

      t.timestamps null: false
    end
  end
end
