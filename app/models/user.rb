class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 mount_uploader :avatar, AvatarUploader
 
  has_many :courses
  has_many :lectures
  has_and_belongs_to_many :lectures

  acts_as_commontator
  acts_as_voter


end
