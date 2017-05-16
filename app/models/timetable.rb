class Timetable < ApplicationRecord
  belongs_to :zone
  by_star_field :tarikh
end
