class Course < ApplicationRecord
    validates :title,  presence: true
    belongs_to :user
    has_many :lectures
end
