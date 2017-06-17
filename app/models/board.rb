class Board < ApplicationRecord
  include UuidHelper
  has_many :links
  validates :name, presence: true, length: { minimum: 1 }
  def to_param
    "#{id}-#{uuid}"
  end
end
