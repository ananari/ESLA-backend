class Datapoint < ApplicationRecord
  belongs_to :language
  belongs_to :feature
  belongs_to :user
  has_many :examples
  validates :value, presence: true
  validates :language_id, presence: true
  validates :feature_id, presence: true
  validates :user_id, presence: true
  validates_uniqueness_of :language_id, :scope => [:feature_id]
end
