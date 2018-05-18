class Lecture < ApplicationRecord
    belongs_to :course
    belongs_to :user
    
    mount_uploader :file, FileUploader
end
