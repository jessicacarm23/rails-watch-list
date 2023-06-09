class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, length: { minimum: 1 }
  validates :name, uniqueness: true
end
