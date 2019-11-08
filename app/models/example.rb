class Example < ApplicationRecord
  belongs_to :datapoint
  belongs_to :user
  validates :datapoint_id, presence: true
  validates :user_id, presence: true
end
