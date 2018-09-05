class UpdaterJob < ApplicationJob

  def perform(params)
    # Do something later
    Rails.logger.debug params.inspect
    zone = Zone.find(params[:zone])
    year = params[:year] || Date.today.year
    month = params[:month] || Date.today.month

    #zone.timetables.monthly(year, month)
    timetables = Jakim.monthly(month: month, zone: params[:zone])
    Rails.logger.debug timetables.inspect
  
    timetables["prayerTime"].try(:each) do |timetable|
      date = timetable.date.to_date
      data = { imsak: timetable.imsak, subuh: timetable.fajr, syuruk: timetable.syuruk, zohor: timetable.dhuhr, asar: timetable.asar, maghrib: timetable.maghrib,  isyak: timetable.isyak }
      timetable = Timetable.create_with(data).find_or_create_by(tarikh: date, zone_code: zone.code)
      timetable.update_columns(serial: "#{Date.today.year}#{Date.today.month}") if timetable.persisted?
    end

  end
end
