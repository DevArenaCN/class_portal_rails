class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_number
      t.string :title
      t.text :description
      t.string :instructor
      t.date :start_date
      t.date :end_date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
