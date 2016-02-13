class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :enrollments
  has_many :courses, :through => :enrollments
end
