class Feature < ApplicationRecord
  has_many :datapoints
  has_many :languages, through: :datapoints
  validates :name, presence: true
  validates :domain, presence: true

  def values
    vals = []
    self.datapoints.each {|dp| vals << dp.value}
    vals
  end
end
