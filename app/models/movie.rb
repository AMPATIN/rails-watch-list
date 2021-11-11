class Movie < ApplicationRecord
  # A movie has many bookmarks
  has_many :bookmarks

  # A movie must have a unique title.
  validates :title, uniqueness: true
  validates :title, presence: true

  # A movie must have an overview
  validates :overview, presence: true
end
