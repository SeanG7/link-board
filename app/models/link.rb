class Link < ApplicationRecord
  belongs_to :board
  validates :name, presence: true, length: { minimum: 1 }
  validates :url, presence: true, length: { minimum: 1 }
end
