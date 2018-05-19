class Lecture < ApplicationRecord
    validates :file, :content, presence: true
    belongs_to :course
    belongs_to :user
    acts_as_commontable
    acts_as_votable
    has_and_belongs_to_many :users
    mount_uploader :file, FileUploader
end
