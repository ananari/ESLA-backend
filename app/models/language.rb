class Language < ApplicationRecord
  has_many :datapoints
  has_many :languages, through: :datapoints
  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :iso, presence: true
end
