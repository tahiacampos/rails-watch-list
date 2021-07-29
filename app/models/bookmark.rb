class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: {minimum: 6, too_long: "%{count} cannot be shorter than characters"}
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
