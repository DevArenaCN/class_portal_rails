json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :student, :course, :instructor
  json.url enrollment_url(enrollment, format: :json)
end
