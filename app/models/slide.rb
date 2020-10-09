class Slide < ApplicationRecord
  validates :timestamp, presence: true
  has_many :members
end
