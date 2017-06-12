class Board < ApplicationRecord
  include UuidHelper
  has_many :logs
  validates :name, presence: true, length: { minimum: 1 }
end
