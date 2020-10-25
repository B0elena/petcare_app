class Management < ApplicationRecord
  belongs_to :pet
  validates :weight, :food, :to_day, presence: true
end
