class Artist < ApplicationRecord
  belongs_to :user
  has_many :creations

  resourcify

  after_initialize :default_values

  private
    def default_values
        self.earning_to_date ||= 0
    end
end
