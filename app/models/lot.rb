class Lot < ApplicationRecord
  has_many :compositions, dependent: :destroy
  has_many :bottles, through: :compositions
end
