class Actor < ApplicationRecord
  has_many :posts
  validates :name, presence: true, uniqueness: true
  validates :wiki_url, presence: true
end
