class Member < ApplicationRecord
  belongs_to :project
  validates :name, :color, presence: true
end
