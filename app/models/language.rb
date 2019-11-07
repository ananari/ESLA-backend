class Language < ApplicationRecord
  has_many :datapoints
  has_many :languages, through: :datapoints
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :iso, presence: true
  validates :iso, uniqueness: true

end
