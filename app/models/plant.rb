class Plant < ApplicationRecord
  belongs_to :garden
  has_one_attached :image_url

  validates :name, presence: true
end
