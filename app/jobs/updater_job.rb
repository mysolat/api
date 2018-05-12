class UpdaterJob < ApplicationJob

  def perform(params)
    # Do something later
    Rails.logger.debug params.inspect
    zone = Zone.find(params[:zone])
    year = params[:year]
    month = params[:month]

    #zone.timetables.monthly(year, month)
    timetables = PrayerTimeService.new(zone: zone.code, year: year, month: month).fetch
    Rails.logger.debug timetables.inspect
    if timetables.present?
      timetables.each do |timetable|
        date = "#{year}-#{month}-#{timetable[:tarikh].to_i}".to_date
        data = { imsak: timetable[:imsak], subuh: timetable[:subuh], syuruk: timetable[:syuruk], zohor: timetable[:zohor], asar: timetable[:asar], maghrib: timetable[:maghrib],  isyak: timetable[:isyak] }
        timetable = Timetable.create_with(data).find_or_create_by(tarikh: date, zone_code: zone.code)
        timetable.update_columns(serial: "#{year}#{month}")
      end
    end

  end
end
