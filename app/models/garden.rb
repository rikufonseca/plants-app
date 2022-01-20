class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy
  has_one_attached :banner_url

  validates :name, presence: true
end
