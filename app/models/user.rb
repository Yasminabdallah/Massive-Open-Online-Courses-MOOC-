class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
  validates :name, :password,:avatar,:email, presence: true
  has_many :courses
  has_many :lectures
  has_and_belongs_to_many :lectures

  ROLES = %w[author student ]
  
  def is?( requested_role )
    self.role == requested_role.to_s
  end


  acts_as_commontator
  acts_as_voter


end
