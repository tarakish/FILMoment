class Actor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :wiki_url, presence: true
end
