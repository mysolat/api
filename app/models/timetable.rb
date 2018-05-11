class Timetable < ApplicationRecord
  belongs_to :zone
  scope :daily,  ->(date) {where(tarikh: date)}
  scope :monthly, -> (start_date, end_date) {where("tarikh >= :start_date and tarikh <= :end_date", start_date: start_date, end_date: end_date)}
  
end
