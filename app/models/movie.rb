class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, length: { minimum: 1 }
  validates :title, uniqueness: true

  validates :overview, length: { minimum: 1 }
end
