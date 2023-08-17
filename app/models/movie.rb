# frozen_string_literal: true

# This class represents Movie.
class Movie < ApplicationRecord
  # has many bookmarks (should not be able to destroy self if has bookmarks children)
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # A movie must have a unique title and an overview.
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
  # The title and the overview cannot be blank
  validates :title, presence: true
  validates :overview, presence: true
end
