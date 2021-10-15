class Post < ApplicationRecord
  belongs_to :actor
  has_many :likes

  validates :film_title, presence: true
  validates :scene, presence: true, uniqueness: true
end
