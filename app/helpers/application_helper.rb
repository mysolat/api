module ApplicationHelper

	def hijri_date(date)
		HijriUmmAlqura.gd_to_hd(date.year, date.month, date.day)
	end

end