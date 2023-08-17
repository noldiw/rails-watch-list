# frozen_string_literal: true

# This class represents List.
class List < ApplicationRecord
  # Name is unique
  validates :name, uniqueness: true
  # Name cannot be blank
  validates :name, presence: true
  # Has many bookmarks (link btw list and movies = bookmarks)
  has_many :bookmarks, dependent: :destroy
  # Has many movies
  has_many :movies, through: :bookmarks, dependent: :destroy
end
