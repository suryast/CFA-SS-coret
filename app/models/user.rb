class User < ApplicationRecord
  has_many :artists
  has_many :creations, through: :artists
  has_many :products
  
  after_initialize :default_values
  after_create :assign_default_role

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  mount_uploader :avatar, AvatarUploader

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  def assign_default_role
    if self.roles.blank?
      self.add_role :customer
    elsif user.has_role? :seller
      self.add_role :seller, Artist
    else

    end
  end

  private
    def default_values
        self.earning_to_date ||= 0
    end
end
