class Lecture < ApplicationRecord
    belongs_to :course
    belongs_to :user
    acts_as_commontable
    mount_uploader :file, FileUploader
end
