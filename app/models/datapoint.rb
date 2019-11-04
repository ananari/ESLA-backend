class Datapoint < ApplicationRecord
  validates :value, presence: true
  validates :language_id, presence: true
  validates :feature_id, presence: true
  validates :user_id, presence: true
end
