class Zone < ApplicationRecord
  belongs_to :state

  has_many :locations
  has_many :timetables
end
