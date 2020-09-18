class Member < ApplicationRecord
  belongs_to_many :slides
  validates :name, :color, presence: true
end
