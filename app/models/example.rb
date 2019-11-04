class Example < ApplicationRecord
  validates :datapoint_id, user: true
  validates :user_id, presence: true
end
