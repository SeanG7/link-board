# frozen_string_literal: true
# Link resource
class Link < ApplicationRecord
  # Each link belongs to a Board
  belongs_to :board
end
