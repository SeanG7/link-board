# frozen_string_literal: true
# Board model
class Board < ApplicationRecord
  has_many :links, dependent: :destroy
end
