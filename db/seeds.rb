State.create!([
  {name: "Kedah", country_id: "MY"},
  {name: "Pulau Pinang", country_id: "MY"},
  {name: "Perak", country_id: "MY"},
  {name: "Selangor", country_id: "MY"},
  {name: "Kuala Lumpur", country_id: "MY"},
  {name: "Putrajaya", country_id: "MY"},
  {name: "Labuan", country_id: "MY"},
  {name: "Negeri Sembilan", country_id: "MY"},
  {name: "Melaka", country_id: "MY"},
  {name: "Johor", country_id: "MY"},
  {name: "Perlis", country_id: "MY"},
  {name: "Pahang", country_id: "MY"},
  {name: "Kelantan", country_id: "MY"},
  {name: "Terengganu", country_id: "MY"},
  {name: "Sabah", country_id: "MY"},
  {name: "Sarawak", country_id: "MY"}
])

locations = [
      {kod: "JHR01", zon: "Pulau Aur, Pemanggil", negeri: "Johor"},
      {kod: "JHR02", zon: "Johor Bharu, Kota Tinggi, Mersing", negeri: "Johor"},
      {kod: "JHR03", zon: "Kluang, Pontian", negeri: "Johor"},
      {kod: "JHR04", zon: "Batu Pahat, Muar, Segamat, Gemas", negeri: "Johor"},

      {kod: "KDH01", zon: "Kota Setar, Kubang Pasu, Pokok Sena", negeri: "Kedah"},
      {kod: "KDH02", zon: "Kuala Muda, Yan, Pendang", negeri: "Kedah"},
      {kod: "KDH03", zon: "Padang Terap, Sik", negeri: "Kedah"},
      {kod: "KDH04", zon: "Baling", negeri: "Kedah"},
      {kod: "KDH05", zon: "Bandar Baharu, Kulim", negeri: "Kedah"},
      {kod: "KDH06", zon: "Langkawi", negeri: "Kedah"},
      {kod: "KDH07", zon: "Gunung Jerai", negeri: "Kedah"},

      {kod: "KTN01", zon: "Bachok, Kota Bharu, Machang, Pasir Mas, Pasir Puteh, Tanah Merah, Tumpat, Kuala Krai, Mukim Chiku", negeri: "Kelantan"},
      {kod: "KTN03", zon: "Gua Musang (Daerah Galas Dan Bertam), Jeli", negeri: "Kelantan"},

      {kod: "MLK01", zon: "Seluruh Negeri Melaka", negeri: "Melaka"},
      
      {kod: "NGS01", zon: "Tampin, Jempol", negeri: "Negeri Sembilan"},
      {kod: "NGS02", zon: "Jelebu, Kuala Pilah, Port Dickson, Rembau, Seremban", negeri: "Negeri Sembilan"},
      
      {kod: "PHG01", zon: "Pulau Tioman", negeri: "Pahang"},
      {kod: "PHG02", zon: "Kuantan, Pekan, Rompin, Muadzam Shah", negeri: "Pahang"},
      {kod: "PHG03", zon: "Jerantut, Temerloh, Maran, Bera, Chenor, Jengka", negeri: "Pahang"},
      {kod: "PHG04", zon: "Bentong, Lipis, Raub", negeri: "Pahang"},
      {kod: "PHG05", zon: "Genting Sempah, Janda Baik, Bukit Tinggi", negeri: "Pahang"},
      {kod: "PHG06", zon: "Cameron Highlands, Genting Higlands, Bukit Fraser", negeri: "Pahang"},

      {kod: "PLS01", zon: "Kangar, Padang Besar, Arau", negeri: "Perlis"},
    
      {kod: "PNG01", zon: "Seluruh Negeri Pulau Pinang", negeri: "Pulau Pinang"},

      {kod: "PRK01", zon: "Tapah, Slim River, Tanjung Malim", negeri: "Perak"},
      {kod: "PRK02", zon: "Kuala Kangsar, Sg. Siput (Daerah Kecil), Ipoh, Batu Gajah, Kampar", negeri: "Perak"},
      {kod: "PRK03", zon: "Pengkalan Hulu, Grik, Lenggong", negeri: "Perak"},
      {kod: "PRK04", zon: "Temengor, Belum", negeri: "Perak"},
      {kod: "PRK05", zon: "Kg Gajah, Teluk Intan, Bagan Datuk, Seri Iskandar, Beruas, Parit, Lumut, Sitiawan, Pulau Pangkor", negeri: "Perak"},
      {kod: "PRK06", zon: "Selama, Taiping, Bagan Serai, Parit Buntar", negeri: "Perak"},
      {kod: "PRK07", zon: "Bukit Larut", negeri: "Perak"},

      {kod: "SBH01", zon: "Bahagian Sandakan (Timur), Bukit Garam, Semawang, Temanggong, Tambisan, Bandar Sandakan", negeri: "Sabah"},
      {kod: "SBH02", zon: "Beluran, Telupid, Pinangah, Terusan, Kuamut, Bahagian Sandakan (Barat)", negeri: "Sabah"},
      {kod: "SBH03", zon: "Lahad Datu, Silabukan, Kunak, Sahabat, Semporna, Tungku, Bahagian Tawau  (Timur)", negeri: "Sabah"},
      {kod: "SBH04", zon: "Bandar Tawau, Balong, Merotai, Kalabakan, Bahagian Tawau (Barat)", negeri: "Sabah"},
      {kod: "SBH05", zon: "Kudat, Kota Marudu, Pitas, Pulau Banggi, Bahagian Kudat", negeri: "Sabah"},
      {kod: "SBH06", zon: "Gunung Kinabalu", negeri: "Sabah"},
      {kod: "SBH07", zon: "Kota Kinabalu, Ranau, Kota Belud, Tuaran, Penampang, Papar, Putatan, Bahagian Pantai Barat", negeri: "Sabah"},
      {kod: "SBH08", zon: "Pensiangan, Keningau, Tambunan, Nabawan, Bahagian Pendalaman (Atas)", negeri: "Sabah"},
      {kod: "SBH09", zon: "Beaufort, Kuala Penyu, Sipitang, Tenom, Long Pa Sia, Membakut, Weston, Bahagian Pendalaman (Bawah)", negeri: "Sabah"},
     
      {kod: "SGR01", zon: "Gombak, Petaling, Sepang, Hulu Langat, Hulu Selangor, Rawang, Shah Alam", negeri: "Selangor"},
      {kod: "SGR02", zon: "Kuala Selangor, Sabak Bernam", negeri: "Selangor"},
      {kod: "SGR03", zon: "Klang, Kuala Langat", negeri: "Selangor"},

      {kod: "SWK01", zon: "Limbang, Lawas, Sundar, Trusan", negeri: "Sarawak"},
      {kod: "SWK02", zon: "Miri, Niah, Bekenu, Sibuti, Marudi", negeri: "Sarawak"},
      {kod: "SWK03", zon: "Pandan, Belaga, Suai, Tatau, Sebauh, Bintulu", negeri: "Sarawak"},
      {kod: "SWK04", zon: "Sibu, Mukah, Dalat, Song, Igan, Oya, Balingian, Kanowit, Kapit", negeri: "Sarawak"},
      {kod: "SWK05", zon: "Sarikei, Matu, Julau, Rajang, Daro, Bintangor, Belawai", negeri: "Sarawak"},
      {kod: "SWK06", zon: "Lubok Antu, Sri Aman, Roban, Debak, Kabong, Lingga, Engkelili, Betong, Spaoh, Pusa, Saratok", negeri: "Sarawak"},
      {kod: "SWK07", zon: "Serian, Simunjan, Samarahan, Sebuyau, Meludam", negeri: "Sarawak"},
      {kod: "SWK08", zon: "Kuching, Bau, Lundu, Sematan", negeri: "Sarawak"},
      {kod: "SWK09", zon: "Zon Khas (Kampung Patarikan)", negeri: "Sarawak"},
      
      {kod: "TRG01", zon: "Kuala Terengganu, Marang, Kuala Nerus", negeri: "Terengganu"},
      {kod: "TRG02", zon: "Besut, Setiu", negeri: "Terengganu"},
      {kod: "TRG03", zon: "Hulu Terengganu", negeri: "Terengganu"},
      {kod: "TRG04", zon: "Dungun, Kemaman", negeri: "Terengganu"},

      {kod: "WLY01", zon: "Kuala Lumpur", negeri: "Kuala Lumpur"},
      {kod: "WLY01", zon: "Putrajaya", negeri: "Putrajaya"},
      {kod: "WLY02", zon: "Labuan", negeri: "Labuan"}
  
    ]


locations.each do |location|
  state = State.find_or_create_by(name: location[:negeri])
  zone = Zone.create_with(remarks: location[:zon], state_id: state.id).find_or_create_by(code: location[:kod])
  districts = zone.remarks.split(",")
  #puts districts
  districts.each do |district|
    puts district.strip
    location = Location.find_or_create_by(district: district.strip, state_id: state.id, zone_code: zone.code)
  end  
end
