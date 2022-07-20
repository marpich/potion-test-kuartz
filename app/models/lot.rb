class Lot < ApplicationRecord
  has_many :bottles, through: :compositions
end
