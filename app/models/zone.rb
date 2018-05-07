class Zone < ApplicationRecord
  belongs_to :state

  has_many :locations,  primary_key: :code, foreign_key: :zone_code
  has_many :timetables, primary_key: :code, foreign_key: :zone_code

  def to_param
    code
  end

  def self.find(input)
    if input.is_a?(Integer)
      super
    else
      find_by(code: input.upcase)
    end
  end

end
