class Post < ApplicationRecord
  belongs_to :actor

  validates :film_title, presence: true
  validates :scene, presence: true, uniqueness: true
end
