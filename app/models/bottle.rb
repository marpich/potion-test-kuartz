class Bottle < ApplicationRecord
  has_many :compositions, dependent: :destroy
  has_many :lots, through: :compositions
  validates :label, inclusion: { in: %w(pur mix) }
end
