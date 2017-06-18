class Board < ApplicationRecord
  include UuidHelper
  has_many :links
  validates :name, presence: true, length: { minimum: 1 }
  def to_param
    uuid
  end
end
