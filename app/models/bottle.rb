class Bottle < ApplicationRecord
  validates :label, inclusion: { in: %w(pur mix) }
end
