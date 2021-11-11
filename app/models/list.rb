class List < ApplicationRecord
  # A list has many bookmarks
  # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  has_many :bookmarks, dependent: :destroy

  # A list has many movies through bookmarks
  # When you delete a list, you should not delete the movies as they can be referenced in other lists).
  has_many :movies, through: :bookmarks

  # A list must have a unique name.
  validates :name, uniqueness: true
  validates :name, presence: true
end
