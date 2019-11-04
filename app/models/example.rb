class Example < ApplicationRecord
  belongs_to :datapoint
  belongs_to :user
  validates :datapoint_id, user: true
  validates :user_id, presence: true
end
