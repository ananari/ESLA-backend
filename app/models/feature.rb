class Feature < ApplicationRecord
  has_many :datapoints
  has_many :languages, through: :datapoints
  validates :name, presence: true
  validates :domain, presence: true
end
