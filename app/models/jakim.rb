class Jakim < Flexirest::Base
  base_url "https://www.e-solat.gov.my/index.php?r=esolatApi/takwimsolat"
  get :daily,   "&period=today&zone=:zone&month=:month", default: {zone: "SGR01", month: Date.today.month }
  get :monthly, "&period=month&zone=:zone&month=:month", default: {zone: "SGR01", month: Date.today.month }
  get :yearly,  "&period=year&zone=:zone&year=:year",  default: {zone: "SGR01", year: Date.today.year }
end