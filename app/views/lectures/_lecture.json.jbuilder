json.extract! lecture, :id, :file, :content,course_id,:user_id :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
