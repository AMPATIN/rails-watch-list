class Bookmark < ApplicationRecord
  # A bookmark belongs to a movie
  belongs_to :movie

  # A bookmark belongs to a list
  belongs_to :list

  # A bookmark must be linked to a movie and a list,
  validates :movie_id, :list_id, presence: true

  # The [movie, list] pairings should be unique
  validates :list_id, uniqueness: { scope: :movie_id }

  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }
end
