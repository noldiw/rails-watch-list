# frozen_string_literal: true

# This class represents Bookmark.
class Bookmark < ApplicationRecord
  # Define association with movie and list (belong_to):
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true
  validates :list, presence: true
  # the combination must be unique for each bookmark
  validates_uniqueness_of :movie, scope: :list
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
