module ApplicationHelper

	def hijri_date(date)
    date = date.to_date
    if date.present?
		  "none"
    else
      date
    end
	end

  def hijrah_month
    #['Muharram', 'Safar', 'Rabi Al-awwal', 'Rabi Al-Akhar', 'Jumada Al-Awwal', 'Jumada Al-Akhirah', 'Rajab', 'Shaban', 'Ramadhan', 'Shawwal', 'Dhul Qadah', 'Dhul Hijjah']
    ['Muharram', 'Safar', 'Rabiul Awal', 'Rabiul Akhir', 'Jamadil Awal', 'Jamadil Akhir', 'Rejab', 'Syaaban', 'Ramadan', 'Syawal', 'Zulkaedah', 'Zulhijjah']
  end

  def formatted_hijrah_date(date)
    date = hijri_date(date.to_date)
    date = date.split("-")
    year = date[0]
    month = date[1]
    day = date[2]
    "#{day} #{hijrah_month[month.to_i - 1]} #{year}"
  end

end