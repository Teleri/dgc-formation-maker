class Project < ApplicationRecord
  validates :name, :song, :member_list, :slide_count, presence: true
  has_many :slides
end
