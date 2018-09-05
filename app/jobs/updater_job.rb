class UpdaterJob < ApplicationJob

  def perform(params)
    # Do something later
    Rails.logger.debug params.inspect
    zone = Zone.find(params[:zone])
    year = params[:year] || Date.today.year
    month = params[:month] || Date.today.month

    start_date = Date.new(year, month, 1)
    end_date = start_date.end_of_month

    #zone.timetables.monthly(year, month)

    days = Time.days_in_month(month, year)

    sn = "#{Date.today.year}#{Date.today.month}"

    db = zone.timetables.monthly(start_date, end_date)
    db_sn = db.pluck(:serial).uniq

    #puts db_sn.inspect
    #puts db.count.inspect
  
    skip_update = false
    if (db.count() == days) and (db_sn.first.to_i >= sn.to_i)
      Rails.logger.debug "skipping #{params[:zone]} #{year}-#{month}"
      skip_update = true
    end

    if skip_update == false
      timetables = Jakim.monthly(month: month, zone: params[:zone])
      Rails.logger.debug "updating #{params[:zone]} #{year}-#{month} #{timetables.present?}"
      timetables["prayerTime"].try(:each) do |timetable|
        #puts timetable.date.inspect
        date = normalize_date(timetable.date).to_date
        data = { imsak: timetable.imsak, subuh: timetable.fajr, syuruk: timetable.syuruk, zohor: timetable.dhuhr, asar: timetable.asr, maghrib: timetable.maghrib,  isyak: timetable.isha, hijri: timetable.hijri }
        timetable = zone.timetables.create_with(data).find_or_create_by(tarikh: date, zone_code: zone.code)
        Rails.logger.debug timetable.errors.inspect if timetable.errors.present?
        timetable.assign_attributes(serial: sn)
        timetable.save if timetable.changed?
      end
    end

  end


  def normalize_date(date)
    date = date.to_s.split("-")
    day = date[0]
    month = date[1]
    year = date[2]
    #puts "#{date} #{month}"
    #puts malay_month[month.downcase].inspect
    "#{year}-#{malay_month[month.downcase]}-#{day}"
  end

  def malay_month
    {'jan' => 1, 'feb' => 2, 'mac' => 3, 'apr' => 4, 'mei' => 5, 'jun' => 6,
     'jul' => 7, 'ogos' => 8, 'sep' => 9, 'okt' => 10, 'nov' => 11, 'dis' => 12}
  end
end
