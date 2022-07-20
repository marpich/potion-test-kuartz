class Bottle < ApplicationRecord
  has_many :compositions, dependent: :destroy
  validates :label, inclusion: { in: %w(pur mix) }
end
