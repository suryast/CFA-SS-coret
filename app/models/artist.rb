class Artist < ApplicationRecord
  belongs_to :user
  has_many :creations
  after_initialize :default_values

  mount_uploader :avatar, AvatarUploader

  resourcify

  private
    def default_values
        self.earning_to_date ||= 0
    end
end
