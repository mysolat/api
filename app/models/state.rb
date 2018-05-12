class State < ApplicationRecord
  has_many :locations
  has_many :zones
end
