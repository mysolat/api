#author: mohd khairi mohd adnan
#date : 2015-02-05
require 'nokogiri'
require 'open-uri'
class PrayerTimeService
  def initialize(params)
    @zone = params[:zone]
    @year = params[:year]
    @month = params[:month]
  end

  def self.locations
    zones = [
      {kod: "KDH01", zon: "Kota Setar, Kubang Pasu, Pokok Sena", negeri: "Kedah"},
      {kod: "KDH02", zon: "Pendang, Kuala Muda, Yan", negeri: "Kedah"},
      {kod: "KDH03", zon: "Padang Terap, Sik", negeri: "Kedah"},
      {kod: "KDH04", zon: "Baling", negeri: "Kedah"},
      {kod: "PNG01", zon: "Seluruh Negeri Pulau Pinang", negeri: "Pulau Pinang"},
      {kod: "PRK01", zon: "Tapah, Slim River, Tanjung Malim", negeri: "Perak"},
      {kod: "PRK02", zon: "Ipoh, Batu Gajah, Kampar, Sg. Siput, Kuala Kangsar", negeri: "Perak"},
      {kod: "PRK03", zon: "Pengkalan Hulu, Grik, Lenggong", negeri: "Perak"},
      {kod: "SGR01", zon: "Gombak, Hulu Selangor, Rawang, Hulu Langat, Sepang, Petaling, Shah Alam", negeri: "Selangor"},
      {kod: "SGR02", zon: "Sabak Bernam, Kuala Selangor, Klang, Kuala Langat", negeri: "Selangor"},
      {kod: "SGR03", zon: "Kuala Lumpur", negeri: "Kuala Lumpur"},
      {kod: "SGR04", zon: "Putrajaya", negeri: "Putrajaya"},
      {kod: "WLY02", zon: "Labuan", negeri: "Labuan"},
      {kod: "NGS01", zon: "Jempol, Tampin", negeri: "Negeri Sembilan"},
      {kod: "NGS02", zon: "Port Dickson, Seremban, Kuala Pilah, Jelebu, Rembau", negeri: "Negeri Sembilan"},
      {kod: "MLK01", zon: "Bandar Melaka, Alor Gajah, Jasin, Masjid Tanah, Merlimau, Nyalas", negeri: "Melaka"},
      {kod: "JHR01", zon: "Pulau Aur, Pemanggil", negeri: "Johor"},
      {kod: "JHR02", zon: "Kota Tinggi, Mersing, Johor Bahru", negeri: "Johor"},
      {kod: "JHR03", zon: "Kluang, Pontian", negeri: "Johor"},
      {kod: "PLS01", zon: "Kangar, Padang Besar, Arau", negeri: "Perlis"},
      {kod: "PHG01", zon: "Pulau Tioman", negeri: "Pahang"},
      {kod: "PHG02", zon: "Kuantan, Pekan, Rompin, Muadzam Shah", negeri: "Pahang"},
      {kod: "PHG03", zon: "Maran, Chenor, Temerloh, Bera, Jerantut", negeri: "Pahang"},
      {kod: "PHG04", zon: "Bentong, Raub, Kuala Lipis", negeri: "Pahang"},
      {kod: "PHG05", zon: "Genting Sempah, Janda Baik, Bukit Tinggi", negeri: "Pahang"},
      {kod: "PHG06", zon: "Bukit Fraser, Genting Higlands, Cameron Higlands", negeri: "Pahang"},
      {kod: "KTN01", zon: "K.Bharu, Bachok, Pasir Puteh, Tumpat, Pasir Mas,Tnh. Merah, Machang, Kuala Krai, Mukim Chiku", negeri: "Kelantan"},
      {kod: "KTN03", zon: "Jeli, Gua Musang (Mukim Galas & Bertam)", negeri: "Kelantan"},
      {kod: "TRG01", zon: "Kuala Terengganu, Marang", negeri: "Terengganu"},
      {kod: "TRG02", zon: "Besut, Setiu", negeri: "Terengganu"},
      {kod: "TRG03", zon: "Hulu Terengganu", negeri: "Terengganu"},
      {kod: "TRG04", zon: "Kemaman Dungun", negeri: "Terengganu"},
      {kod: "SBH01", zon: "Sandakan, Bdr. Bkt. Garam, Semawang, Temanggong, Tambisan", negeri: "Sabah"},
      {kod: "SBH02", zon: "Pinangah, Terusan, Beluran, Kuamut, Telupit", negeri: "Sabah"},
      {kod: "SBH03", zon: "Lahad Datu, Kunak, Silabukan, Tungku, Sahabat, Semporna", negeri: "Sabah"},
      {kod: "SBH04", zon: "Tawau, Balong, Merotai, Kalabakan", negeri: "Sabah"},
      {kod: "SBH05", zon: "Kudat, Kota Marudu, Pitas, Pulau Banggi", negeri: "Sabah"},
      {kod: "SBH06", zon: "Gunung Kinabalu", negeri: "Sabah"},
      {kod: "SBH07", zon: "Papar, Ranau, Kota Belud, Tuaran, Penampang, Kota Kinabalu", negeri: "Sabah"},
      {kod: "SBH08", zon: "Pensiangan, Keningau, Tambunan, Nabawan", negeri: "Sabah"},
      {kod: "SBH09", zon: "Sipitang, Membakut, Beaufort, Kuala Penyu, Weston, Tenom, Long Pa Sia", negeri: "Sabah"},
      {kod: "SWK01", zon: "Limbang, Sundar, Terusan, Lawas", negeri: "Sarawak"},
      {kod: "SWK02", zon: "Niah, Belaga, Sibuti, Miri, Bekenu, Marudi", negeri: "Sarawak"},
      {kod: "SWK03", zon: "Song, Belingan, Sebauh, Bintulu, Tatau, Kapit", negeri: "Sarawak"},
      {kod: "SWK04", zon: "Igan, Kanowit, Sibu, Dalat, Oya", negeri: "Sarawak"},
      {kod: "SWK05", zon: "Belawai, Matu, Daro, Sarikei, Julau, Bitangor, Rajang", negeri: "Sarawak"},
      {kod: "SWK06", zon: "Kabong, Lingga, Sri Aman, Engkelili, Betong, Spaoh, Pusa, Saratok, Roban, Debak", negeri: "Sarawak"},
      {kod: "SWK07", zon: "Samarahan, Simunjan, Serian, Sebuyau, Meludam", negeri: "Sarawak"},
      {kod: "SWK08", zon: "Kuching, Bau, Lundu, Sematan", negeri: "Sarawak"},
      {kod: "JHR04", zon: "Batu Pahat, Muar, Segamat, Gemas", negeri: "Johor"},
      {kod: "PRK04", zon: "Temengor, Belum", negeri: "Perak"},
      {kod: "PRK05", zon: "Teluk Intan, Bagan Datoh, Kg.Gajah, Sri Iskandar, Beruas, Parit, Lumut, Setiawan, Pulau Pangkor", negeri: "Perak"},
      {kod: "PRK06", zon: "Selama, Taiping, Bagan Serai, Parit Buntar", negeri: "Perak"},
      {kod: "PRK07", zon: "Bukit Larut", negeri: "Perak"},
      {kod: "KDH05", zon: "Kulim, Bandar Bahru", negeri: "Kedah"},
      {kod: "KDH06", zon: "Langkawi", negeri: "Kedah"},
      {kod: "SWK09", zon: "Zon Khas", negeri: "Sarawak"},
      {kod: "KDH07", zon: "Gunung Jerai", negeri: "Kedah"}
    ]
  end

  def self.seed_data
    locations.each do |location|
      state = State.find_or_create_by(name: location[:negeri])
      zone = Zone.create_with(remarks: location[:zon], state_id: state.id).find_or_create_by(code: location[:kod])
      districts = zone.remarks.split(",")
      districts.each do |district|
        location = Location.find_or_create_by(district: district, state_id: state.id, zone_code: zone.code)
      end  
    end
  end

  def self.seed_timetable(year)
    zones = Zone.all
    (1..12).each do |month|
      zones.each do |zone|
        puts year
        puts month
        timetables = PrayerTimeService.new(zone: zone.code, year: year, month: month).fetch
        if timetables.present?
          timetables.each do |timetable|
            puts timetable
            timetable = Timetable.create_with(imsak: timetable[:imsak], 
                                              subuh: timetable[:subuh], 
                                              syuruk: timetable[:syuruk], 
                                              zohor: timetable[:zohor], 
                                              asar: timetable[:asar], 
                                              maghrib: timetable[:maghrib], 
                                              isyak: timetable[:isyak])
                                .find_or_create_by(tarikh: "#{year}-#{month}-#{timetable[:tarikh].to_i}".to_date, zone_code: zone.code)
          end
        end
      end

    end

    #Timetable.create(zone_id,tarikh,imsak,subuh,syuruk,zohor,asar,maghrib,isyak,serial)
  end

  def fetch
    kod = @zone
    year = @year
    month =  @month

    html = "http://www.e-solat.gov.my/web/waktusolat.php?zone=#{kod}&year=#{year}&bulan=#{month}&jenis=year&LG=BM"
    doc = Nokogiri::HTML(open html)
    doc.search('.//img').remove
    rows = doc.xpath('//table[@bgcolor="#7C7C7C"]/tr')
    details = rows.collect do |row|
      detail = {}
      [
        [:tarikh , 'td[1]/b/font/text()'],
        [:hari , 'td[2]/font/b/text()'],
        [:imsak, 'td[3]/font/text()'],
        [:subuh, 'td[4]/font/text()'],
        [:syuruk, 'td[5]/font/text()'],
        [:zohor, 'td[6]/font/text()'],
        [:asar, 'td[7]/font/text()'],
        [:maghrib, 'td[8]/font/text()'],
        [:isyak, 'td[9]/font/text()']
        ].each do |name, xpath|
        detail[name] = row.at_xpath(xpath).to_s.strip
      end
      detail
      #find by or - zone.find_by(@zone).timetables.create_with(detail).find_by_or_creat_by(tarik: detail[:tarikh])
    end
    #remove first element header
    details.shift
    details
  end

  private


end

