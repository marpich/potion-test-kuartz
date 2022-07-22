class Lot < ApplicationRecord
  has_many :compositions, dependent: :destroy
  has_many :bottles, through: :compositions
  validates :name, :remaining_qty, presence: { message: "Vous devez compléter les deux champs" }
end
